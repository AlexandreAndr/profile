# CV lives in its own repo (git@github.com:AlexandreAndr/Alexandre_ANDRE_CV.git),
# cloned into ./cv (git-ignored here). `make cv` compiles it and copies the PDF
# to the path the site links to.

TEXBIN  := $(HOME)/Library/TinyTeX/bin/universal-darwin
export PATH := $(TEXBIN):$(PATH)

CV_DIR  := cv
CV_REPO := git@github.com:AlexandreAndr/Alexandre_ANDRE_CV.git
CV_PDF  := assets/Alexandre_ANDRE_CV.pdf
GH_SSH  := ssh -i ~/.ssh/id_ed25519_gh -o IdentitiesOnly=yes

.PHONY: cv cv-pull cv-watch cv-clean

# Compile the CV and copy it into the site
cv: $(CV_DIR)/main.tex
	cd $(CV_DIR) && latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
	cp $(CV_DIR)/main.pdf $(CV_PDF)
	@echo "Updated $(CV_PDF)"

# Fetch the latest CV sources (e.g. after editing on Overleaf), then compile
cv-pull: $(CV_DIR)/main.tex
	git -C $(CV_DIR) pull --ff-only
	$(MAKE) cv

# Recompile on every save (Ctrl-C to stop); run `make cv` after to copy the PDF
cv-watch: $(CV_DIR)/main.tex
	cd $(CV_DIR) && latexmk -pdf -pvc -interaction=nonstopmode main.tex

cv-clean:
	cd $(CV_DIR) && latexmk -C

$(CV_DIR)/main.tex:
	GIT_SSH_COMMAND="$(GH_SSH)" git clone $(CV_REPO) $(CV_DIR)
	git -C $(CV_DIR) config core.sshCommand "$(GH_SSH)"
