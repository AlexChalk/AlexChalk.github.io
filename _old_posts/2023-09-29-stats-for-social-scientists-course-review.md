---
title: "Stats for social scientists course review"
layout: post
date: 2023-09-29
headerImage: false
tag:
- mathematics
star: false
category: blog
author: alexchalk
description: Stats for social scientists course review
---

I get very excited about stats, I started a masters degree recently, it includes a compulsory stats course (hooray!). As someone who wasn't bad at maths but still dropped it as soon as possible, and who's been gradually working to pick up useful things like stats (for everything!) and calculus (primarily for machine learning) in my spare time, I thought my notes on my experience of the course might be useful.

---

The intro in the textbook is *terrible*. I'm blown away by the fact that the authors use their first interaction with readers to actively talk down the subject. As someone who thinks getting paid to learn and write about this stuff would be a pretty nice gig, it deeply disappoints me that academics have chosen to behave in this way.

---

The course was very gentle for the first three weeks, then suddenly cranked up like crazy in week 4. We were introduced to the normal distribution, variance, the sampling distribution of means, z-scores, the central limit theorem, confidence intervals, *and* t tests all in one go.

I am extremely grateful I had covered all this material in my spare time previously, otherwise I'd have been a confused mess this week. I think the normal distribution, the central limit theorem, and the sampling distribution of means need at least a week to themselves, probably two. Similarly I'd have had a separate week just for confidence intervals in which we explain why they work even if you don't know the population stdev, and a week on t tests to take a bit more time over the maths.

The magic property of the central limit theorem where it gets you the shape of the sampling distribution of means regardless of the underlying distribution was extremely unintuitive to me when I first encountered it. I actually only grokked it after stepping away from the material and coming back to it.

Two reasons I think it's important to take a lot of time over the central limit theorem. 1. i think it's pretty beautiful and a great opportunity to try and get people excited about the subject. 2. it's fundamental and not immediately obvious. 

Most people's conscious experiences of statistics are unfortunately going to have been people using them to lie or justify lame educational policy. People are likely coming into this highly skeptical of the subject. If you rush them through something like this, they may well assume that stats is just garbage and based on sketchy assumptions, explaining their prior negative conscious experiences of it. I think this needs to be intuitive, and the textbook and lectures rushed through the CLT in less than a page.

Seeing as the next week was just correlation/causation and testing sample vs population, I feel extra conviction more time should have been given to this.

---

Confidence intervals in which we explain why they work even if you don't know the population stdev. This was actually new material to me and it didn't intuitively make sense at all why the maths works if you don't have the population stdev. I will be working through youtube videos, brilliant wiki/wikipedia, mit opencourseware until it at least feels like it works, even if I don't understand the proof.

My brief take on how you can still have the correct confidence interval even if you use sample SD when calculating the SEM:

If there's no direction in which the sample SD/population SD difference is biased (i.e. the sample SD is an unbiased estimate of the population SD, which we can mathematically prove is true), the CI will widen as often as it narrows. This means that even though, if you knew you were erring on the "wide" side, you could know your CI was higher than 95% for z* = 1.96, you don't know if you're erring on the "wide" or the "narrow" side. All you know is that you err in one direction as much as you err in the other direction, which means your probability remains unchanged at 95%.

Also I found this video helpful: https://www.youtube.com/watch?v=soZv_KKax3E

---

I think it would be useful to spend some time on how we're using maths differently to middle school. At least for me, I used to conceive of maths as abstract truths, but now I think of it more as a 'weird highly-precise form of thinking' that I can apply to concrete subjects. I find this an important and valuable adjustment to have made, e.g. the reason we square and use variance is it works well for our purposes (it gives you positive values, and later lets you calculate unbiased population variance from a sample). "We do things this way because it's useful" vs "it's just obvious that e.g. saying 2 + 2 = 4 is the correct way to do things" is a profound and important idea to grok, at least for me, and I wonder if other students would perhaps have benefited from a couple of weeks so they can think through this idea as well. It has given me a deeper appreciation for math, it's beautiful to me which inspires effort and engagement, and i feel like i have a better understanding of how to apply math to real world problems and will notice more opportunities to do so, which is extremely useful!

---

Measures of association was a repeat of CLT theorem week in that it was preceded by a very gentle week and then a lot of math was thrown at us. Unfortunately I was not familiar with the math this time and haven't had a chance to gain a meaningful understanding of it.

---


[1]: https://docs.haskellstack.org/en/stable/README/
[2]: https://lexi-lambda.github.io/blog/2018/02/10/an-opinionated-guide-to-haskell-in-2018/
[3]: https://www.schoolofhaskell.com/user/pbv/an-introduction-to-quickcheck-testing
[4]: https://github.com/AlexChalk/graham-scan/blob/master/src/Lib.hs
