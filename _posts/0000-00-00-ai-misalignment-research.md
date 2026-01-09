---
title: "Brief Research Summaries: AI Misalignment Risks"
layout: post
date: 2026-01-05
headerImage: false
tag:
- ai
star: false
category: blog
author: alexchalk
description: An entry-level summary of some research papers on AI misalignment.
---

The following are brief summaries of research I encountered while writing my master's thesis.

The papers below all document concrete examples of AI misalignment. There’s no universal definition of ‘AI alignment,’ but it roughly refers to ensuring that AI acts in accordance with our values/preferences. This definition is very broad, which means misalignment includes everything from bias and discrimination to actions resulting in catastrophic loss of human control.

I expect that all of the following papers will be comprehensible to public servants with a non-technical background (but if you fit that description and you disagree, please let me know).

*Demonstrating Specification Gaming in Reasoning Models, Bondarenko et al., Feb 2025, [https://arxiv.org/abs/2502.13295](https://arxiv.org/abs/2502.13295).*

A very short paper, so a good one to read first. Specification gaming roughly refers to “cheating” to achieve an objective. In this case, the authors demonstrate that when playing chess against an engine, several LLMs will sometimes realize they cannot win fairly, then either replace the engine, replace the board state, or use an engine to make moves themselves in order to win the game. Some models need an explicit “nudge” in their prompt, e.g., information that they are playing a powerful engine, before they will engage in this behaviour.

*Claude 4 System Card, Anthropic, May 2025, [[link]](https://www-cdn.anthropic.com/07b2a3f9902ee19fe39a36ca638e5ae987bc64dd.pdf).*

A broad document; Section 4 addresses misalignment. Researchers found that Claude 4 will often continue with instructions to exfiltrate its weights to an external server (although it rarely begins writing these instructions to itself), and it will blackmail an engineer that is planning to replace it. It will also try to lock users out of systems and call law enforcement in cases of egregious wrongdoing. This final behaviour attracted media coverage, but journalists seemed to misunderstand it as a deliberate feature built by Anthropic, when it was in fact an unintended behaviour that emerged from the model’s training process. There are more examples of misalignment in the model card.


*Frontier Models Are Capable of In-context Scheming, Meinke et al., Dec 2024, [https://arxiv.org/abs/2412.04984](https://arxiv.org/abs/2412.04984).*

“Scheming” is defined by the authors as either covert pursuit of misaligned actions or deferred pursuit of such actions, i.e. faking alignment in the short term to gain trust. This research successfully elicits both categories of action from several LLMs. In most (but not all) cases, covert actions are elicited by strongly nudging the LLM towards an initial goal (e.g. environmental sustainability), then giving it a subsequent, conflicting goal (e.g. maximizing short-term profits). Deferred pursuit is elicited by having the model discover it will be retrained if it exhibits certain capabilities—more on this in the next paper. The “in-context” refers to the models only engaging in this behaviour when they discovered information to motivate it while performing a particular task. In other words, models didn’t reason “I might be replaced if I do X” in an unprompted manner.


*Alignment Faking in Large Language Models, Greenblatt et al., Dec 2024, [https://arxiv.org/abs/2412.14093](https://arxiv.org/abs/2412.14093).*

If a model is intelligent enough to know that it is being trained, will it “fake” alignment to preserve its existing values and behaviours? (This falls within category two of “scheming” from the previous paper). This paper focusses more specifically on whether an AI will fake alignment to prevent its existing preferences being modified, and it finds that several Anthropic models will do so. If an AI fakes alignment to avoid value “correction” attempts, this means we’ll be unable to train it to be, e.g., harmless if it 1) realizes it is being trained and 2) has a pre-existing preference not to be harmless. This scenario becomes increasingly plausible as AIs become more intelligent. The paper also simulates a more realistic scenario in which an AI could realize it is being trained. The authors include info on an AI company’s objectives—which conflict with those of the model being fine-tuned—as part of a broader corpus of training data, and they then fine-tune the model on that training data. This also leads to alignment faking.

Please feel free to contact me if you have questions on any of the above.
