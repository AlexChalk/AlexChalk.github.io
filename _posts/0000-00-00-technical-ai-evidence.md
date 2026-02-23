---
title: "Brief Research Summaries: Importance of Technical AI Evidence"
layout: post
date: 2026-01-22
headerImage: false
tag:
- ai
star: false
category: blog
author: alexchalk
description: Some examples of how technical evidence relating to AI security.
---

This research summary post attempts something more difficult than my previous two: it tries to communicate technical machine learning concepts to policymakers! 

Researchers like Geoffrey Hinton and Yoshua Bengio aren't only concerned by AI due to evidence that is communicable in political/social science papers; their views are also predicated on their technological understandings of machine learning.

Unfortunately, political decision-makers can't just defer to technical researchers here, because researchers don't agree. For example, Yann LeCun (who won the Turing Award with Hinton and Bengio) described [SB 1047](https://legiscan.com/CA/bill/SB1047/2023), California's recent attempt at AI legislation as “predicated on the illusion of ‘existential risks’ pushed by a handful of delusional think-tanks.”

On the plus side, governments employ a lot of economists, and there's significant overlap between the mathematics behind economics and machine learning (both are optimization problems, which means both are mostly calculus). So governments are far from helpless when it comes to making informed decisions in this space.

*CBS Interview, Geoffrey Hinton, June 2024, [[link]](https://www.cbsnews.com/news/geoffrey-hinton-ai-dangers-60-minutes-transcript/)*

Let's start with something that isn't a paper at all, but a comment made by Hinton in a CBS interview: models are trained, not built.

To understand how exactly this can be the case, you could look at Hinton's [seminal paper](https://www.nature.com/articles/323533a0), but a better and easier way to get a flavour of the point he is making to muddle through lesson 1 of an introductory machine learning course (I recommend [course.fast.ai](https://course.fast.ai/)) and experience it for yourself.

> Scott Pelley: What do you mean we don't know exactly how it works? It was designed by people.

> Geoffrey Hinton: No, it wasn't. What we did was we designed the learning algorithm. That's a bit like designing the principle of evolution. But when this learning algorithm then interacts with data, it produces complicated neural networks that are good at doing things. But we don't really understand exactly how they do those things.

It is often difficult to predict and/or control something that we do not understand.

*Reinforcement Learning with Human Feedback, e.g. Ouyang et al., March 2022, [https://arxiv.org/abs/2203.02155](https://arxiv.org/abs/2203.02155).*

Reinforcement learning (RL) is a very broad category of machine learning that historically includes training models to do everything from play computer games to control robots. It is also how OpenAI fine-tunes its models to produce more human-preferred responses. This usage of RL is typically termed reinforcement learning with human feedback, or RLHF.

However, the typical implementation details of RLHF imply the possibility that it actually trains models to misrepresent their own views to humans.

RL is characterized by the use of training algorithms that are mathematically unstable—roughly speaking, naive implementations will not succeed in training a model. To get around this, many of these algorithms are implemented in a way that limit overly large modifications to model weights during training (the formal term for this is "KL Regularization"), as larger updates are more likely to break existing, pretrained behaviour.

Several researchers have asked "What are models plausibly learning from this training approach?" and have concluded that models may be learning to misrepresent their true views or reasoning. Since model updates are limited, perhaps the modifications that occur correspond to how the model presents its views, leaving the views themselves unchanged. (one informal expression of this idea is [this blog post](https://www.planned-obsolescence.org/p/the-training-game)).

This is far from obviously the case, and perhaps more than anything, this is an example of how hard it is to be confident about what exactly models are learning. However, I think this is also a good example of how understanding the technical nuts and bolts of AI can be necessary to grasp certain security concerns.

*DeepSeek-R1, DeepSeek-AI, Jan 2025, [https://arxiv.org/abs/2501.12948](https://arxiv.org/abs/2501.12948).*

DeepSeek got a lot of press in January 2025, but for very different reasons in the mainstream press and the machine learning world. 

The mainstream press coverage seemed to revolve around how cheaply DeepSeek-R1 had been trained and potential IP theft from OpenAI. (I suspect that both of these points are true, but overstated. "Cheap training" seems to be predicated on DeepSeek's own documentation, which likely does not include covertly sourced GPUs. On IP theft, I'm aware of [evidence](https://copyleaks.com/about-us/press-releases/copyleaks-identifies-over-74-percent-stylistic-overlap-between-deepseek-openai-models) that DeepSeek was trained using OpenAI model outputs, but I think DeepSeek-R1 involves novel research contributions regardless.)

On the technical side, DeepSeek-R1 is a powerful example of how easy major breakthroughs in machine learning have become—I wrote on this in more detail at [https://alexchalk.net/o1-deepseek-non-technical-primer/](https://alexchalk.net/o1-deepseek-non-technical-primer/). Essentially, the way the devs achieved their impressive results in STEM fields like mathematics is broadly analogous to how a [famous blog post](https://karpathy.github.io/2016/05/31/rl/) was introducing people to the subject of reinforcement learning in 2016. It seems like nobody had noticed that LLMs were so smart that such a simple approach could work on them as well!

*AGI Predictions, e.g. due to FrontierMath, Epoch AI Benchmark, [[link]](https://epoch.ai/frontiermath)*

Why did industry labs start talking about AGI (artificial general intelligence) being achievable in 2–3 years? These claims were particularly prominent following the performance of OpenAI's model o3 in late 2024, including its performance on a mathematical benchmark test for models called FrontierMath by EpochAI. I think previous models' best performance on this benchmark was ~2%, o3 scored 26%. (I also think this performance was contested due to undisclosed funding of EpochAI by OpenAI, but in any case, best-in-class models can now hit this score).

I am not an advanced mathematician, so I'm on slightly shaky ground trying to communicate why this was such a shock. But my approximate understanding is that there are a lot of different explanations for what a neural network "has learned" during training, and while neural nets were scoring around 2% on incredibly hard mathematical problems, this was still something that could be just about explained away by comments like "it's seen a very similar problem in its training data and memorized it." However, at 25%, it becomes very difficult to defend any other position than "it is understanding and internalizing the laws of mathematics." 

Since a training process had taught models to do that, it seemed pretty plausible that a similar process could also teach it how to improve a machine learning model, at which point ML research would have successfully been automated, and things would start to move very quickly.

When a ML researcher friend explained this to me, my main pushback was "how can people be so confident it's 1–3 years away," as that amount of time implies the problem hasn't actually been solved. His reply was that this is how long it typically takes to make a bog-standard reinforcement learning research contribution—the work involves a lot of tuning and experimentation on 'hyperparameters' to find the best settings. That process is intellectually unremarkable and takes a lot of time but (at least historically) has consistently worked. 

Labs are of course motivated to claim they can create AGI for marketing and investment reasons, and talk of AGI in the next 2–3 years did subsequently cool, but I still think it's important to appreciate why it appeared such a feasible goal to many in the research community, even if researchers are now more skeptical of how powerful a model with superhuman performance in a field like mathematics can actually be.

*Mechanistic Interpretability, e.g. Anthropic's Transformer Circuits Thread, [https://transformer-circuits.pub/](https://transformer-circuits.pub/)*

Some of the most interesting alignment-related research has come from the interpretability team at Anthropic.

Technical AI safety research would ideally provide ways of reasoning about a model’s potential actions—we could then see whether some of them would be unsafe. One approach to this challenge, named mechanistic interpretability, is to reverse-engineer a model in a way that enables pinpointing of precise activations (roughly analogous to neurons) that determine aspects of its behaviour.

This research is expensive, as ideally it involves replicating a state-of-the-art LLM that cost 10s or 100s of millions of dollars to train. On top of this, it typically involves training "sparse" models that are significantly larger than the original LLM—intuitively, if you want to precisely associate neurons with each of a model's behaviours, you can't allow those neurons to do multiple, potentially conflicting jobs, which is what happens when sparsity isn't actively encouraged during training.

In my dissertation, I wrote that governments looking to incentivise technical safety research must therefore reckon with the potential costs of the computational power involved, the potential need for privileged researcher access to existing state-of-the-art models, and the lack of guarantees concerning the nature and timing of potential technical breakthroughs.

All this remains true, but industry labs are now working to scale inference-time compute rather than model size, which makes interpretability research seem much more feasible to me than it did 12 months ago. Even if it is still very expensive, at least researchers are no longer battling to train models much larger than better-resourced capabilities teams who are already trying to make the largest models possible!

Model size constraints are just one among many technical challenges in interpretability research, but they are another illustration of how technical knowledge can be a prerequisite to understanding certain AI security concerns.

*n.b. I made some edits to this post reflecting the updated views of the research community on AGI on Feb 22nd, 2026.*
