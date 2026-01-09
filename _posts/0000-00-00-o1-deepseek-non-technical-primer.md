---
title: "Reinforcement Learning: A Non-Technical Primer on o1 and DeepSeek-R1"
layout: post
date: 2025-02-09
headerImage: false
tag:
- ai
star: false
category: blog
author: alexchalk
description: An entry-level explainer on how models like o1 and DeepSeek-R1 got so good at mathematics.
---

### Introduction

This post is an explanation of *reinforcement learning (RL)* and how it is used to train large language models (LLMs). Reinforcement learning is the key ingredient that differentiates AI models like o1 from earlier versions such as GPT-4. 

### 0. Why is this important?

Using reinforcement learning to refine or "fine-tune" LLMs has improved their ability to respond to mathematical and other quantitative questions. This is arguably the biggest LLM research breakthrough since the introduction of the [transformer architecture][transformers-link] in 2017, which first allowed models fluent in English to be trained.

Reinforcement learning has also previously produced AI models that play games including [Chess and Go][alphazero-link] to a superhuman level. If a research team goes on to train an LLM with superhuman performance in mathematics, it will be able to solve a wide range of real-world problems, with implications that will most likely be world-changing.

Finally, the recently published [DeepSeek-R1 paper][deepseek-paper-link] suggests that fine-tuning LLMs using reinforcement learning is much simpler than many researchers previously thought. (Part of the goal of this post is to explain why.)

### 1. A simpler problem: grading image recognition

Reinforcement learning models a problem as one or more choices that can be scored; it then trains an AI to make choices which maximize that score. To understand what on earth this means, we will start by looking at the simpler, but related, problem of *classification*. 

Imagine I want to evaluate someone's ability to recognize pictures of different pets. (If we were doing reinforcement learning and the actor we were trying to teach was a neural network, we would call it a "policy," often denoted by π.) When I give the person an image of a pet, they have to tell me whether it is a cat, a dog, or something else. 

One way to grade this person would be to imagine the task as a single-round game where players receive a reward, or score, of 1 for giving the correct answer (e.g. "it's a cat"), and a score of 0 for giving the incorrect answers. 

If the person isn't sure of the correct answer, they are also allowed to express uncertainty, for example they might say "I'm 90% confident it's a cat, but there's a 5% chance it's a dog, and a 5% chance it's something else." In this case, we can multiply the likelihoods they assigned to each answer with the associated scores, then add them up. That's 0.9 × 1 for "it's a cat," and 0.05 × 0 for "it's a dog" and "something else," so 0.9 in total. (I've simplified the mathematics here, as we should actually multiply the reward by the *log* of the assigned likelihood—you can see the section "Deriving Policy Gradients" of [this post][karpathy-link] for an explanation.)

By providing someone with this score as feedback, we could hopefully train them to get better at analyzing and classifying pet images. And the above scoring idea is in fact roughly analogous to how neural networks receive feedback on classifying images—they are often trained using a formula (or "loss function") called "cross-entropy loss." (For the precise formula, I recommend [this fast.ai excel spreadsheet][xe-spreadsheet-fastai-link] to interested readers.)

As you might have guessed, this scoring strategy can be generalized to many challenges beyond classification.

### 2. A multi-round role-playing game

Now imagine that instead of grading someone's ability to classify images, we are grading their ability to play a turn-based role-playing game. On each of their turns, the player takes an action like "pick up gold," "attack villager," or "learn to swim," and each of these actions earns the player a certain number of points. Just like above, if the player is unsure of what to do, they can hedge their bets and assign probabilities to the different actions.  Furthermore, let's imagine the number of rounds is fixed, e.g., choosing "learn to swim" can't end the game early because you drown, and that the scores for actions in each round don't depend on the previous rounds, for example, you wouldn't get a different number of points for choosing "attack villager" if you'd chosen "learn swordfighting" at some previous point. Players are scored on the total number of points they've accumulated at the end of the game.

It turns out that we can score this player using a very similar strategy to our image classification approach from above. The main difference is that instead of having one correct answer for each possible choice, we now have a number of points determined by the game. For each action, we can look at the rewards associated with the player's choices, multiply them by the player's assigned probability, then add them up. For example, imagine the player said "I'm 60% confident I should learn to swim, and 40% confident I should pick up the gold." If the reward for learning to swim is 100 points, they score 0.6 × 100 = 60 points, and if the reward for picking up gold is 1000 points, they score an additional 0.4 × 1000 = 400, for a total of 460. (Once again, I'm [omitting the log operation here][karpathy-link].)

If we repeated this scoring process for each turn the player took and told them their results, we can imagine that they'd learn how to get the highest possible score pretty quickly. They could play through the game a few times, trying out all the actions, until they understood the highest-value action in each round. But this approach isn't going to work for anything but the simplest of games—can we modify it to work for something more complicated?

### 3. Chess

A game like chess is more complex than the game we just described for at least two reasons. Firstly, you have to wait until the very end of the game to get your score, which we can call 1 if you checkmate the enemy king, -1 if you're checkmated, or 0 if you draw. The game does not have constant built-in move-by-move scoring—more formally, we can say this means chess is a "sparse reward" rather than a "dense reward" problem. And more deeply, this indicates that in chess, the quality of almost every move is determined by *the future moves it allows you to make*. Secondly, unlike the above game, the quality of your moves in chess is also dependent on the moves that have already been made. These past moves are reflected in the current position of the pieces, which we can call the "board state" or "game state."

Given this added complexity, what are some approaches we could take if we wanted to give someone feedback on the quality of their individual chess moves? Perhaps we could design an algorithm that does a deep search of all possible subsequent moves, and which tries to establish if the player has created a game state from which they can force checkmate (or from which their opponent can do so). In RL, such an approach is understandably referred to as "search." Or perhaps we could hire a few grandmasters to give us common pointers that we could use to evaluate how promising various chess positions are, e.g., that having more powerful pieces on the board is usually an advantage.

Another approach is to decide that giving good feedback here is simply very difficult for humans, and to instead train an entire second neural network to estimate the future rewards associated with a player's possible choices. This is a common strategy in reinforcement learning, and the entity we train to give this feedback is referred to as a "critic." Many superhuman results in AI development, such as the previously mentioned AI performances in Chess and Go, were achieved via training architectures that included critics, and to many researchers, training critics is the most interesting part of reinforcement learning.

In any case, if we find a solution to give our player feedback on their chess moves, perhaps involving all three of the above elements, how can we apply similar components to improving an LLM?

### 4. Human preferences

The first application of reinforcement learning to LLMs was not to improve their mathematical proficiency, it was to train responses preferred by humans. 

Using responses from ChatGPT ranked by human workers, OpenAI trained a model that could score text based on how favourably a human would view it, giving us a reward, or scoring system, for this particular challenge. They then used this reward model to fine-tune ChatGPT, with the goal of better aligning it with human priorities. This process is called [reinforcement learning from human feedback (RLHF)][rlhf-explainer-link], although how well it truly aligns an AI with human priorities [is up for debate][rlhf-critique-link].

The algorithm used to perform fine-tuning in RLHF is [Proximal Policy Optimization (PPO)][ppo-link], and its full details are once again beyond the scope of this article. However, the process involves training a critic to estimate future rewards, and it is worth observing why this is important in the "game" of natural language. LLMs like ChatGPT aren't trained to select moves in a game of chess, they are trained to predict the next word (or, more precisely, token) in a sentence, but like in chess, we want a way of assessing how human-preferred our final output will be token-by-token (or move-by-move). Our reward function lets us explicitly score the LLM on "human-preferredness" once it has finished generating a response, but the critic can give us an estimate of how good its final score will be at each step (or new token) along the way.

### 5. Mathematics and natural language

It seems that in certain circumstances, predicting the next token in a sentence is more like making chess moves than you might initially think! If this is true for RLHF, the similarity is even more remarkable when teaching an LLM to improve at tasks like mathematics or coding.

Let's say I've asked our AI for the answer to a mathematical problem. Like in chess, I can assign a simple reward to the model based on its output: 1 if it eventually gives me the correct answer, and 0 if it doesn't. But can I also treat the sequence of tokens it chooses to output like moves in a game of chess, where some are more likely to lead to the correct answer? Actually, yes, because it turns out that LLMs *are more likely* to eventually output a correct answer if they choose certain sequences of tokens over others. For example, researchers have noticed that if, when asking an LLM a question, you tell it to "think in steps," it will output a more deliberate line of reasoning or "chain of thought," and that this makes it quite a bit more likely to eventually give you an accurate response.

So how can we train an LLM to output better and better sequences of tokens, so that it gets better and better at solving problems? We'll start with some housekeeping. When we are setting mathematical challenges, we can train an LLM to output its solution in an html tag like "\<solution\>5\</solution\>," and by looking for these tags, we can automatically check if it correctly answered the question. Also, our users might not be interested in the chain of thought that leads to the correct answer—they might just want the answer. So we can train our LLM to use a second set of tags like "\<think\>chain of thought\</think\>." Then we can hide the chain of thought from our users, or perhaps let them tell us whether they want to see it displayed. We can formally refer to both of these training goals as "rule-based rewards."

More importantly, there are some general principles we can notice and use to encourage more optimal chains of thought in our LLM. Firstly, we might have observed that our LLM sometimes makes up or "hallucinates" facts. If we want to get around this, perhaps we can find a way to grade the tokens in the "think" section of its response differently from its "public" response, so it doesn't learn to try and impress us in its "internal" chain of thought. Secondly, we might expect that for harder problems, a longer chain of thought is likely to lead to more accurate responses, so if our LLM is struggling with mathematics, we can encourage it to use longer chains of thought for harder problems by penalizing "think" sections that seem too short (and vice-versa).

But most importantly, we need a training algorithm that improves the LLM's ability to generate good next tokens. Until recently, many people thought the most performant approach here was the same one used in RLHF: to fine-tune our AI using PPO, which involves a critic. However, it turns out there is an alternative strategy available!

### 6. o1 vs DeepSeek-R1

The finer details of how RL was used to train OpenAI's o1 remain secret, but another lab, DeepSeek, have been more forthcoming, publishing a [research paper][deepseek-paper-link] on a comparable model, DeepSeek-R1.

The paper surprised researchers because of both how simple and effective the lab's approach to RL appears to have been, and a major component of this is that DeepSeek-R1 was trained to output the superior chains of thought described above without a critic. Training a critic is probably the most complicated part of reinforcement learning, and it is also computationally expensive, so finding a training strategy that forgoes it altogether is a big deal. The DeepSeek team has achieved this using an approach called "Group Relative Policy Optimization" (GRPO).

Let's say that when solving a mathematical problem, our LLM often outputs the token "aha" (DeepSeek-R1 does this), which increases the likelihood of it finding the correct answer. How has it learnt this behaviour without a critic? With GRPO, we have our LLM answer each mathematical training problem thousands of times. We then look at its thousands of attempts, or more formally "rollouts," and use a rule-based reward to assign 1 to all the tokens that led to a correct answer, and 0 to all the tokens that didn't; by doing this, we'll assign scores to every "aha" our model has output. Then, if we take some sort of average of these scores, this will give us an approximate estimation of quality of the "move" "aha" in the "game" of mathematics. And if our LLM was more likely to give us the correct answer when it outputs "aha" a few times, it will then learn from that fact and incorporate it into its future responses.

Remarkably, this works very well. In fact, the performance of DeepSeek-R1 suggests that by using this approach—asking a model to solve the same problem many times and performing a straightforward mathematical analysis of its various attempts—we can calculate training feedback that seems roughly as good as if we had trained a sophisticated neural network to perform the same task. Something like this has been historically used in reinforcement learning to train networks on [simpler tasks][karpathy-link], but its applicability to fine-tuning LLMs has taken many in the research community by surprise. We haven't experimented with applying GRPO to more qualitative tasks, but regardless, it is a major contribution to the current state-of-the-art in reinforcement learning.

### 7. Conclusion

That is, very roughly, how labs have fine-tuned models like o1 and DeepSeek-R1 using reinforcement learning to provide better responses to quantitative questions. The approach will be most effective in domains with the clearest answers, as having an easily-defined end-goal is key to evaluating and optimizing the LLM's chain of thought. It is not clear how we could apply this approach to problems in the arts and humanities, but as observed at the start of this post, an approach that works well for mathematics is already enormously significant. Whether it is sufficient for LLMs to achieve superhuman performance in mathematics remains to be seen.

*Thanks to David Yu-Tung Hui for walking me through the math in the DeepSeek-R1 paper and then reviewing this post. All remaining errors are my own.*

[xe-spreadsheet-fastai-link]: https://github.com/fastai/course22/blob/master/xl/entropy_example.xlsx
[alphazero-link]: https://deepmind.google/discover/blog/alphazero-shedding-new-light-on-chess-shogi-and-go/
[transformers-link]: https://benlevinstein.substack.com/p/a-conceptual-guide-to-transformers
[karpathy-link]: http://karpathy.github.io/2016/05/31/rl/
[deepseek-paper-link]: https://arxiv.org/abs/2501.12948
[rlhf-explainer-link]: https://huggingface.co/blog/rlhf
[rlhf-critique-link]: https://www.planned-obsolescence.org/the-training-game/
[ppo-link]: https://huggingface.co/learn/deep-rl-course/unit8/introduction
