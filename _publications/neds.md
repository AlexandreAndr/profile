---
title: "Neural Encoding and Decoding at Scale"
collection: publications
permalink: /publication/neds
excerpt: 'Recent work has demonstrated that large-scale, multi-animal models are powerful tools for characterizing the relationship between neural activity and behavior. Current large-scale approaches, however, focus exclusively on either predicting neural activity from behavior (encoding) or predicting behavior from neural activity (decoding), limiting their ability to capture the bidirectional relationship between neural activity and behavior. To bridge this gap, we introduce a multi-modal, multi-task model that enables simultaneous Neural Encoding and Decoding at Scale (NEDS). Central to our approach is a novel multi-task-masking strategy, which alternates between neural, behavioral, within-modality, and cross-modality masking. We pretrain our method on the International Brain Laboratory (IBL) repeated site dataset, which includes recordings from 83 animals performing the same visual decision-making task. In comparison to other large-scale modeling approaches, we demonstrate that NEDS achieves state-of-the-art performance for both encoding and decoding when pretrained on multi-animal data and then fine-tuned on new animals. Surprisingly, NEDS’s learned embeddings exhibit emergent properties: even without explicit training, they are highly predictive of the brain regions in each recording. Altogether, our approach is a step towards a foundation model of the brain that enables seamless translation between neural activity and behavior.'
date: 2025-05-01
venue: 'ICML 2025'
paperurl: 'https://arxiv.org/pdf/2504.08201'
citation: 'Zhang, Y., Wang, Y., Azabou, M., Andre, A., Wang, Z., Lyu, H., The International Brain Laboratory, Dyer, E., Paninski, L., & Hurwitz, C. (2025). Neural Encoding and Decoding at Scale. *arXiv:2504.08201*.'
category: conferences
---
