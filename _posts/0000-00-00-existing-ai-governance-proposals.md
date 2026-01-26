---
title: "Existing AI Governance Proposals"
layout: post
date: 2026-01-26
headerImage: false
tag:
- ai
star: false
category: blog
author: alexchalk
description: An introduction to AI Governance Proposals (as of February 2025)
---

I compiled an introductory list of AI governance proposals while writing my master's thesis, and one of my supervisors found it a helpful introduction to the area, so I've decided to reproduce it here. Please note that this was originally written in February 2025, so any important proposals from after that date will be missing. Please also note that as this was part of a thesis, it's written in academese. If that's not what you're looking to read, take a look at any of my other posts instead.

## Existing AI Governance Proposals

The following briefly reviews existing, but mostly unrealized, AI governance proposals. It splits these proposals into four main buckets: apolitical organizations for establishing scientific consensus on AI; testing and auditing measures to catch dangerous model capabilities before they are released; technical safety research to better understand models and avoid training dangerous ones; and export control proposals to influence which actors can train powerful models. Testing and auditing proposals are the most numerous, and they are subdivided into suggestions concerning the organizations responsible for regulating AI, and suggestions concerning the content of the regulations themselves.

Proposals for building scientific consensus have roughly been modelled on the United Nations' Intergovernmental Panel on Climate Change (IPCC). For example, one paper has suggested an intergovernmental Commission on Frontier AI,<sup><a id="ref1"></a>[[1]](#fn1)</sup> although it notes that "the scientific challenges and potential of politicization imply that a Commission---especially one that aims at broad political representation---may not be able to build scientific consensus effectively."<sup><a id="ref2"></a>[[2]](#fn2)</sup> Its proposal has arguably now been realized in the form of the Expert Advisory Panel behind the 2025 International AI Safety Report.<sup><a id="ref3"></a>[[3]](#fn3)</sup>

Regarding organizations for regulating AI, Demis Hassabis, CEO of Google DeepMind, has called for an entity like the International Atomic Energy Agency (IAEA) to monitor unsafe projects.<sup><a id="ref4"></a>[[4]](#fn4)</sup> Analogously, an intergovernmental or multi-stakeholder "Advanced AI Governance Organization" to promote norms and standards, and to support implementation, monitoring and compliance with safety protocols has been proposed.<sup><a id="ref5"></a>[[5]](#fn5)</sup> Papers have also suggested that states create "an International AI Organization (IAIO) to certify state *jurisdictions* for compliance with international oversight standards"<sup><a id="ref6"></a>[[6]](#fn6)</sup> (this would be comparable to the approaches of the International Civil Aviation Organization and the International Maritime Organization), and have more broadly called for mechanisms both to give "regulators visibility into frontier AI development," and to ensure compliance with safety standards."<sup><a id="ref7"></a>[[7]](#fn7)</sup> Alternatively, others have suggested private regulatory markets, arguing that AI is "simply too complex to be understood by politicians, bureaucrats, and judges and represented in the text-based statutes, regulations, and judicial decisions produced and enforced by them,"<sup><a id="ref8"></a>[[8]](#fn8)</sup> and that markets would decentralize enforcement of government policy objectives and enable faster regulatory responses to technological developments. An international AI consortium has also been proposed to "coordinate AI risk evaluations amongst the three core groups of stakeholders---developers of frontier AI systems, independent evaluators, and governments and regulatory agencies"<sup><a id="ref9"></a>[[9]](#fn9)</sup> around the shared goal of "robust verification of the safe training and deployment of frontier AI systems."<sup><a id="ref10"></a>[[10]](#fn10)</sup> The paper in question argues that this would avoid potential conflicts of interest present in regulatory markets.<sup><a id="ref11"></a>[[11]](#fn11)</sup>

On the content of regulations and standards, the UK AISI's "Emerging Processes for Frontier AI Safety" includes assessment and mitigation of model risks, model "red-teaming" and evaluation, sharing model information to facilitate governance, securing model weights (the trained components of models that define their behaviour), establishing a reporting structure for model vulnerabilities, and monitoring deployments for model misuse.<sup><a id="ref12"></a>[[12]](#fn12)</sup> Other researchers have concurrently proposed the following: "Conduct thorough risk assessments informed by evaluations of dangerous capabilities and controllability. Engage external experts to apply independent scrutiny to models. Follow standardized protocols for how frontier AI models can be deployed based on their assessed risk. Monitor and respond to new information on model capabilities."<sup><a id="ref13"></a>[[13]](#fn13)</sup> It has also been suggested that model audits should include structured access via interfaces that provide researchers with a greater ability to inspect system internals.<sup><a id="ref14"></a>[[14]](#fn14)</sup> More ambitiously, audits could include complete "white-box access" to models, with the argument that the potential intellectual property and security risks of such evaluations could be mitigated by secure on-site research environments,<sup><a id="ref15"></a>[[15]](#fn15)</sup> and that there is legal precedent for this form of confidential auditing in the finance industry.<sup><a id="ref16"></a>[[16]](#fn16)</sup> And moving beyond predominantly technical evaluations, a broader, three-layered approach to auditing AI developers has also been proposed, including "governance audits that assess their organisational procedures, accountability structures and quality management systems ... model audits, assessing their capabilities and limitations after initial training but before adaptation and deployment in specific applications ... \[and\] continuous application audits that assess the ethical alignment and legal compliance of their intended functions and their impact over time."<sup><a id="ref17"></a>[[17]](#fn17)</sup>

Regarding organizations for technical AI safety research, Demis Hassabis has proposed a "CERN (European Organization for Nuclear Research) for AI" science institution,<sup><a id="ref18"></a>[[18]](#fn18)</sup> and others have suggested an "AI Safety Project" to "promote AI safety R&D by increasing its scale, resourcing and coordination."<sup><a id="ref19"></a>[[19]](#fn19)</sup> As a first set of technical R&D goals, Turing Award winner Yoshua Bengio proposes the following areas for model safety improvements: oversight and honesty, robustness to new situations, interpretability and transparency, inclusivity, and addressing as-yet-unseen model dangers such as refusal to shut down.<sup><a id="ref20"></a>[[20]](#fn20)</sup> The development of a means for monitoring AI training runs via specialized hardware has also been suggested.<sup><a id="ref21"></a>[[21]](#fn21)</sup>

Less has been written on export controls for AI, but Dario Amodei has recommended the US "secure the AI supply chain in order to maintain its lead while keeping these technologies out of the hands of bad actors."<sup><a id="ref22"></a>[[22]](#fn22)</sup> Others have proposed a multilateral regime similar to the Wassenaar Arrangement for conventional arms and sensitive dual-use technologies,<sup><a id="ref23"></a>[[23]](#fn23)</sup> although it has been argued that this approach would be more workable for hardware than for "models, algorithms, and other digital inputs," and that it would require "unprecedented government oversight of major AI industry players."<sup><a id="ref24"></a>[[24]](#fn24)</sup>

Finally, it should be noted that proposals to address AI which are more ambitious or crisis-oriented than those above also exist; these are generally pessimistic about the ability of regulations to adequately protect humanity from AI risks. A former OpenAI board member supported "the development of crisis management plans for AI accidents,"<sup><a id="ref25"></a>[[25]](#fn25)</sup> the Carnegie Endowment published a paper suggesting planetary asteroid defence measures as a potential blueprint for AI crisis response,<sup><a id="ref26"></a>[[26]](#fn26)</sup> and a founding engineer of Skype has stated that "humanity should collectively maintain the ability to gracefully shut down AI technology at a global scale, in case of emergencies caused by AI."<sup><a id="ref27"></a>[[27]](#fn27)</sup> More pessimistically still, one researcher has called for an indefinite and global moratorium on LLMs, stating that "the most likely result of building a superhumanly smart AI, under anything remotely like the current circumstances, is that literally everyone on Earth will die," and that nuclear powers should be "willing to run some risk of nuclear exchange if that's what it takes to reduce the risk of large AI training runs."<sup><a id="ref28"></a>[[28]](#fn28)</sup>



---

## Footnotes

<a id="fn1"></a><a href="#ref1">[1]</a>: Lewis Ho et al., 'International Institutions for Advanced AI' (arXiv, 11 July 2023), [https://doi.org/10.48550/arXiv.2307.04699](https://doi.org/10.48550/arXiv.2307.04699).

<a id="fn2"></a><a href="#ref2">[2]</a>: Ibid., 9.

<a id="fn3"></a><a href="#ref3">[3]</a>: Yoshua Bengio et al., ‘International AI Safety Report’ (arXiv, 29 January 2025), [https://doi.org/10.48550/arXiv.2501.17805](https://doi.org/10.48550/arXiv.2501.17805).

<a id="fn4"></a><a href="#ref4">[4]</a>: John Werner, 'AI Superpowers & Global Treaties', Forbes, accessed 27 February 2025, [https://www.forbes.com/sites/johnwerner/2025/02/19/international-collaboration-right-now-treaty-verifications-and-more/](https://www.forbes.com/sites/johnwerner/2025/02/19/international-collaboration-right-now-treaty-verifications-and-more/).

<a id="fn5"></a><a href="#ref5">[5]</a>: Lewis Ho et al., ‘International Institutions for Advanced AI’ (arXiv, 11 July 2023), [https://doi.org/10.48550/arXiv.2307.04699](https://doi.org/10.48550/arXiv.2307.04699).

<a id="fn6"></a><a href="#ref6">[6]</a>: Robert Trager et al., 'International Governance of Civilian AI: A Jurisdictional Certification Approach' (arXiv, 11 September 2023), 3, [https://doi.org/10.48550/arXiv.2308.15514](https://doi.org/10.48550/arXiv.2308.15514).

<a id="fn7"></a><a href="#ref7">[7]</a>: Markus Anderljung et al., 'Frontier AI Regulation: Managing Emerging Risks to Public Safety' (arXiv, 7 November 2023), 16, [https://doi.org/10.48550/arXiv.2307.03718](https://doi.org/10.48550/arXiv.2307.03718).

<a id="fn8"></a><a href="#ref8">[8]</a>: Gillian K. Hadfield and Jack Clark, 'Regulatory Markets: The Future of AI Governance' (arXiv, 25 April 2023), 2, [https://doi.org/10.48550/arXiv.2304.04914](https://doi.org/10.48550/arXiv.2304.04914).

<a id="fn9"></a><a href="#ref9">[9]</a>: Ross Gruetzemacher et al., 'An International Consortium for Evaluations of Societal-Scale Risks from Advanced AI' (arXiv, 6 November 2023), 18, [https://doi.org/10.48550/arXiv.2310.14455](https://doi.org/10.48550/arXiv.2310.14455).

<a id="fn10"></a><a href="#ref10">[10]</a>: Ibid., 35.

<a id="fn11"></a><a href="#ref11">[11]</a>: Ibid., 36.

<a id="fn12"></a><a href="#ref12">[12]</a>: ‘Emerging Processes for Frontier AI Safety’ (AI Safety Summit, October 2023), [https://www.gov.uk/government/publications/emerging-processes-for-frontier-ai-safety](https://www.gov.uk/government/publications/emerging-processes-for-frontier-ai-safety).

<a id="fn13"></a><a href="#ref13">[13]</a>: Markus Anderljung et al., 'Frontier AI Regulation: Managing Emerging Risks to Public Safety' (arXiv, 7 November 2023), 23, [https://doi.org/10.48550/arXiv.2307.03718](https://doi.org/10.48550/arXiv.2307.03718).

<a id="fn14"></a><a href="#ref14">[14]</a>: Benjamin S. Bucknall and Robert F. Trager, 'Structured Access for Third-Party Research on Frontier AI Models: Investigating Researchers' Model Access Requirements', *Oxford Martin School*, accessed 14 March 2024, [https://www.oxfordmartin.ox.ac.uk/publications/structured-access-for-third-party-research-on-frontier-ai-models-investigating-researchers-model-access-requirements/](https://www.oxfordmartin.ox.ac.uk/publications/structured-access-for-third-party-research-on-frontier-ai-models-investigating-researchers-model-access-requirements/); Esme Harrington and Mathias Vermeulen, 'External Researcher Access to Closed Foundation Models' (The Mozilla Foundation, 21 August 2024), [https://blog.mozilla.org/wp-content/blogs.dir/278/files/2024/10/External-researcher-access-to-closed-foundation-models.pdf](https://blog.mozilla.org/wp-content/blogs.dir/278/files/2024/10/External-researcher-access-to-closed-foundation-models.pdf).

<a id="fn15"></a><a href="#ref15">[15]</a>: Stephen Casper et al., 'Black-Box Access Is Insufficient for Rigorous AI Audits', in *The 2024 ACM Conference on Fairness, Accountability, and Transparency*, 2024, 8, [https://doi.org/10.1145/3630106.3659037](https://doi.org/10.1145/3630106.3659037).

<a id="fn16"></a><a href="#ref16">[16]</a>: Ibid., 8--9.

<a id="fn17"></a><a href="#ref17">[17]</a>: Jakob Mökander et al., 'Auditing Large Language Models: A Three-Layered Approach', *AI and Ethics*, 30 May 2023, 10, [https://doi.org/10.1007/s43681-023-00289-2](https://doi.org/10.1007/s43681-023-00289-2).

<a id="fn18"></a><a href="#ref18">[18]</a>: John Werner, ‘AI Superpowers & Global Treaties’, Forbes, accessed 27 February 2025, [https://www.forbes.com/sites/johnwerner/2025/02/19/international-collaboration-right-now-treaty-verifications-and-more/](https://www.forbes.com/sites/johnwerner/2025/02/19/international-collaboration-right-now-treaty-verifications-and-more/).

<a id="fn19"></a><a href="#ref19">[19]</a>: Lewis Ho et al., ‘International Institutions for Advanced AI’ (arXiv, 11 July 2023), 2, [https://doi.org/10.48550/arXiv.2307.04699](https://doi.org/10.48550/arXiv.2307.04699).

<a id="fn20"></a><a href="#ref20">[20]</a>: Yoshua Bengio et al., ‘Managing Extreme AI Risks amid Rapid Progress’, Science 384, no. 6698 (24 May 2024): 844, [https://doi.org/10.1126/science.adn0117](https://doi.org/10.1126/science.adn0117).

<a id="fn21"></a><a href="#ref21">[21]</a>: Yonadav Shavit, 'What Does It Take to Catch a Chinchilla? Verifying Rules on Large-Scale Neural Network Training via Compute Monitoring' (arXiv, 30 May 2023), [https://doi.org/10.48550/arXiv.2303.11341](https://doi.org/10.48550/arXiv.2303.11341).

<a id="fn22"></a><a href="#ref22">[22]</a>: ‘Oversight of A.I.: Principles for Regulation’ (Washington, D.C., 25 July 2023), [https://www.judiciary.senate.gov/committee-activity/hearings/oversight-of-ai-principles-for-regulation](https://www.judiciary.senate.gov/committee-activity/hearings/oversight-of-ai-principles-for-regulation).

<a id="fn23"></a><a href="#ref23">[23]</a>: Sujai Shivakumar, Charles Wessner, and Hideki Tomoshige, 'Toward a New Multilateral Export Control Regime' (Center for Strategic & International Studies, 10 January 2023), [https://www.csis.org/analysis/toward-new-multilateral-export-control-regime](https://www.csis.org/analysis/toward-new-multilateral-export-control-regime).

<a id="fn24"></a><a href="#ref24">[24]</a>: Emma Klein and Stewart Patrick, 'Envisioning a Global Regime Complex to Govern Artificial Intelligence', *Carnegie Endowment for International Peace*, 21 March 2024, [https://carnegieendowment.org/research/2024/03/envisioning-a-global-regime-complex-to-govern-artificial-intelligence](https://carnegieendowment.org/research/2024/03/envisioning-a-global-regime-complex-to-govern-artificial-intelligence).

<a id="fn25"></a><a href="#ref25">[25]</a>: Helen Toner et al., 'Skating to Where the Puck Is Going' (Center for Security and Emerging Technology), 19, accessed 10 April 2024, [https://cset.georgetown.edu/publication/skating-to-where-the-puck-is-going/](https://cset.georgetown.edu/publication/skating-to-where-the-puck-is-going/).

<a id="fn26"></a><a href="#ref26">[26]</a>: Emma Klein and Stewart Patrick, ‘Envisioning a Global Regime Complex to Govern Artificial Intelligence’, Carnegie Endowment for International Peace, 21 March 2024, [https://carnegieendowment.org/research/2024/03/envisioning-a-global-regime-complex-to-govern-artificial-intelligence](https://carnegieendowment.org/research/2024/03/envisioning-a-global-regime-complex-to-govern-artificial-intelligence).

<a id="fn27"></a><a href="#ref27">[27]</a>: Jann Tallinn, 'Priorities \[for Reducing Extinction Risk from AI\]', accessed 12 April 2024, [https://jaan.info/priorities/](https://jaan.info/priorities/).

<a id="fn28"></a><a href="#ref28">[28]</a>: Eliezer Yudkowsky, 'The Open Letter on AI Doesn't Go Far Enough', *Time*, 29 March 2023, [https://time.com/6266923/ai-eliezer-yudkowsky-open-letter-not-enough/](https://time.com/6266923/ai-eliezer-yudkowsky-open-letter-not-enough/).
