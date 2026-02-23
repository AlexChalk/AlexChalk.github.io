---
title: "Brief Research Summaries: AI and CBRN Risks"
layout: post
date: 2026-01-08
headerImage: false
tag:
- ai
star: false
category: blog
author: alexchalk
description: An entry-level summary of research into AI and CBRN Risks.
---

The following is another batch of documents I encountered while writing my master's thesis. The theme is roughly “will AI make CBRN (chemical, biological, radiological, and nuclear) weapons development dangerously accessible?” As before, I expect that all of these documents would be comprehensible to public servants with a non-technical background.

*AI Could Pose Pandemic-Scale Biosecurity Risks. Here’s How to Make It Safer, Pannu et al., Nov 2024, [https://doi.org/10.1038/d41586-024-03815-2](https://doi.org/10.1038/d41586-024-03815-2).*

A short piece on all biorisk (not just bioweapons). It includes summaries of observed bio-related AI behaviours that the authors argue indicate nascent danger, as well as a list of seven AI capabilities (most unrealized but under research) that they view as moderately or very likely to enable new global outbreaks. It also critiques both the absence of government regulation to address biorisk and the biological capabilities testing performed by private labs like Anthropic. The authors argue that to better evaluate dangers, we need greater clarity on which precise AI capabilities pose a threat.

*The Reality of AI and Biorisk, Peppin et al., Dec 2024, [https://doi.org/10.48550/arXiv.2412.01946](https://doi.org/10.48550/arXiv.2412.01946).*

This paper takes a more skeptical view. It critiques the methodological maturity and transparency of existing biorisk studies, and it concurs with Pannu et al. that we need better formulations of AI capabilities which would indicate a biothreat. It also states that “available literature suggests that current LLMs and biological tools do not pose an immediate risk,” and implies skepticism that they will do so in the near term, arguing that, for example, LLMs cannot give users access to well-resourced biolabs (the authors cite a US Senate testimony that estimates ~30,000 people have access to such physical resources). Personally, I agree this is a limiting factor in certain scenarios, however, companies that will manufacture synthetic proteins to order [already exist](https://www.biomatik.com/services/recombinant-protein-production.html), so if an AI can design a novel compound which bypasses their screening process, I’m not convinced users would need this physical access at all.

*Banning Lethal Autonomous Weapons: An Education, Russell, Spring 2022, [https://issues.org/banning-lethal-autonomous-weapons-stuart-russell/](https://issues.org/banning-lethal-autonomous-weapons-stuart-russell/).*

“Drone swarms” are (at least in my experience) less discussed in AI circles, perhaps because they don’t require state-of-the-art LLMs to be workable. However, Russell points out that, once scaled up, these would effectively function as nuclear weapons without the drawbacks (to the attacker) of radiation or damaging real estate: “A lethal AI-powered quadcopter could be smaller than a tin of shoe polish, and if it carried just three grams of explosive, it could kill a person at close range.  It’s not hard to imagine that eventually, a weapon like this could be mass-produced very cheaply. And, to continue this speculative scenario, a regular shipping container could hold a million of them.” 

I've previously expressed the view that such weapons seem achievable to me today. I'm now more optimistic following a conversation with a machine learning researcher—he told me that AI struggles to confidently pilot drones as any two drones contain minute physical differences that a controller must adjust for to successfully fly them. However, I still suspect that a well-resourced actor could plausibly overcome this difficulty—perhaps through a regime of careful mechanical calibration prior to deployment—and that even an imperfect deployment could kill a frightening number of civilians. Russell’s [short, fictional film](https://www.youtube.com/watch?v=9CO6M2HsoIA) on the subject is also worth looking at.

*Dario Amodei (Anthropic CEO), testimony to US Senate Committee on the Judiciary, July 2023, [[link]](https://www.judiciary.senate.gov/committee-activity/hearings/oversight-of-ai-principles-for-regulation).*

July 2023 is admittedly ancient history in AI, but I found it striking that a CEO, whose company stands to benefit enormously from AI development, roughly told the US government that AI gravely threatens the nation’s security and should be regulated. That said, I am not familiar with this form of hearing, and a cynic could argue that this testimony is designed to hype Anthropic’s tech and/or encourage government regulation to limit market competition. The standout quote for me: “A straightforward extrapolation of today’s systems to those we expect to see in two to three years suggests a substantial risk that AI systems will be able to fill in all the missing pieces, enabling many more actors to carry out large-scale biological attacks. We believe this represents a grave threat to US national security” ([https://www.youtube.com/watch?v=hm1zexCjELo&t=1230s](https://www.youtube.com/watch?v=hm1zexCjELo&t=1230s)).

*Claude 4 System Card, Anthropic, May 2025, [[link]](https://www-cdn.anthropic.com/07b2a3f9902ee19fe39a36ca638e5ae987bc64dd.pdf).*

I referenced the above system card in my previous post; Section 7.2 documents CBRN evaluations. In the researchers’ words: “We found that Claude Opus 4 demonstrates improved biology knowledge in specific areas and shows improved tool-use for agentic biosecurity evaluations, but has mixed performance on dangerous bioweapons-related knowledge. As a result, we were unable to rule out the need for ASL-3 safeguards.” ASL-3 refers to measures defined in Anthropic’s [Responsible Scaling Policy (RSP)](https://www-cdn.anthropic.com/872c653b2d0501d6ab44cf87f43e1dc4853e4d37.pdf): they must be in place before deploying a model that has reached specified capabilities thresholds. Some capability thresholds are defined in Section 2 of the RSP; ASL-3 is required when models demonstrate “The ability to significantly help individuals or groups with basic technical backgrounds (e.g., undergraduate STEM degrees) create/obtain and deploy CBRN weapons.” 

I’ll just add one final gloss: given that (as the authors of paper #1 point out) the arrival of novel, potentially dangerous AI capabilities is very hard to predict, and the current rate of progress in AI development is astonishingly rapid (a good resource on the rate of AI progress is [https://ourworldindata.org/artificial-intelligence](https://ourworldindata.org/artificial-intelligence)), it is usually a very bad idea to view the limitations of today’s AI systems as fixed. I’ll include more details on this in a subsequent post.

*n.b. I made some edits to this post reflecting the updated views of the research community on AGI on Feb 22nd, 2026.*
