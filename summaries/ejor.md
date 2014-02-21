European Journal of Operational Research
========================================

*Matthew Woodruff*

*February 19, 2014*

Volume 235, Issue 3, Pages 471-812 (16 June 2014)
=================================================

Note
====

"Isn't this quite a lot of articles?", I asked myself when I pulled the TOC. "Is this journal published quarterly or something?" No, as it turns out, this journal is published *twice every month*. No wonder it took forever to get Ruchit's paper published. They're trying to turn over a huge volume of material. And at eight pages per article, none of it has very much meat. Unless a paper is truly outstanding, it's just going to get buried here. Actually, I think even a truly outstanding paper would get buried unless it has a very provocative title or a famous name attached. I can't think of any other good way of filtering. Giving every article a serious read would be a full-time job. Even keeping up with the TOC on a regular basis would be a burden. There's no way this would be a suitable target for my next paper. Maybe, *maybe* if we ever decide to demolish AHP this would be a good place to do it.

Summary
=======

Authors in this journal do not appear to draw a firm distinction between multi-objective and multi-criteria optimization. I would say that an objective may incorporate several criteria. I.e., criteria measure what you actually want, objectives are what you try to minimize or maximize. They may be identical, but they don't have to be --- you could incorporate criteria into goals or constraints, or even exclude them completely from the problem formulation. I'm pretty sure this is consistent with how Dr. Ravindran introduced these concepts, but apparently these ideas are not universal.

While many of the papers here do acknowledge the need to find a set of Pareto-optimal solutions, they seem to stay in small numbers of objectives. Like two. I think this also results from their outlook and their methods, which are closely linked. The outlook is basically rational economics and game theory, which readily connects to the mathematical programming methods that also count Von Neumann as an influence. The outlook is most readily disposed to view tradeoffs as between two competing interests, and the methods have a strong curse of dimensionality when it comes to objectives anyway.

Interestingly, but not too surprisingly, I don't think the optimization papers are very good in general. Manuel López-Ibáñez, Thomas Stützle wrote the one that stood out for me. Anytime behavior is an important consideration, and using hypervolume to measure it is a good idea.

Production, manufacturing, and statistics was my favorite section. Innovative applications was all right, Stochastics and Statistics had one article that caught my eye, and Interfaces with other disciplines has the Ormerod article I want to come back to.

Overall, there aren't as many ties to my work as I would hope for. I definitely won't spend much time looking at EJOR optimization papers in future. Maybe I'll come back and read more Production, manufacturing, and statistics papers. The real disconnect, particularly with my next paper, is that almost all of the optimization in this journal is mathematical programming. Mathematical programming is all about the tricks they use to squeeze the whole problem into a tractable mathematical form, and it's a world away from the models I'm interested in.

Invited Review
--------------

### Recent advances in robust optimization: An overview

*Review Article* *Pages 471-483* *Virginie Gabrel, Cécile Murat, Aurélie Thiele*

It looks like they're considering deep uncertainty: "robust decision-making under uncertainty with uncertain distributions".

Continuous Optimization
-----------------------

### The multicriteria p-facility median location problem on networks

*Original Research Article* *Pages 484-493* *Jörg Kalcsics, Stefan Nickel, Miguel A. Pozo, Justo Puerto, Antonio M. Rodríguez-Chía*

It's at least a true two-objective approach. Basically facility location. I'm not too keen on papers of this sort, because I think they've abstracted away all of the interesting parts of the problem.

### The self regulation problem as an inexact steepest descent method for multicriteria optimization

*Original Research Article* *Pages 494-502* *G.C. Bento, J.X. Cruz Neto, P.R. Oliveira, A. Soubeyran*

Not sure what the self regulation problem is, or how a problem can be a method. But at least, multicriteria, and possibly multiobjective with multiple starts?

### Nonsmooth multiobjective programming with quasi-Newton methods

*Original Research Article* *Pages 503-510* *Shaojian Qu, Chen Liu, Mark Goh, Yijun Li, Ying Ji*

Multiobjective, but does not appear to admit black-box models?

### A rank-dependent bi-criterion equilibrium model for stochastic transportation environment

*Original Research Article* *Pages 511-529* *Guangchao Wang, Ning Jia, Shoufeng Ma, Hang Qi*

I'm going to start using the abbreviation AOIS for papers like this: "Abstracted Out Interesting Stuff". Implying that the things I would find most interesting about the problem don't actually show up because the mathematical tricks they're doing can't accomodate them.

Discrete Optimization
---------------------

### New mixed integer-programming model for the pickup-and-delivery problem with transshipment

*Original Research Article* *Pages 530-539* *A. Rais, F. Alvelos, M.S. Carvalho*

Single-objective, but actually seems like they tried to address more of the interesting stuff about vehicle routing problems. Good on them.

### A mixed integer linear programming approach to minimize the number of late jobs with and without machine availability constraints

*Original Research Article* *Pages 540-552* *Boris Detienne*

Having worked in manufacturing, my reaction to the title is, "this is a recipe for disaster!" The number of late jobs is just one of many production metrics, and it doesn't even account for quality. This goes beyond AOIS, this is almost deliberately myopic.

### Integer programming models for the multidimensional assignment problem with star costs

*Original Research Article* *Pages 553-568* *Jose L. Walteros, Chrysafis Vogiatzis, Eduardo L. Pasiliao, Panos M. Pardalos*

Nonlinear integer programming is hard. They do linearization and prove bounds.

### Automatically improving the anytime behaviour of optimisation algorithms

*Original Research Article* *Pages 569-582* *Manuel López-Ibáñez, Thomas Stützle*

Nice. They use hypervolume to measure the performance of a MIP solver on the cost-quality tradeoff. I.e., they want an algorithm that always provides good solutions, and where more computation consistently gives you improvement. (Where have I heard that before?) Anyway, not at all a bad idea, probably the best I've seen so far in this issue.

Good enough, that I actually looked at the article and was further impressed. It looks like they even took parameterization into account. And, gosh, they used ACO. It's a good thing they're only doing two objectives, because they use the algorithm from (Fonseca, Paquete, and López-Ibánez 2006) to compute hypervolume, instead of WFG. My one problem here is that their test case appears to be a TSP, and a little more breadth would be in order. At any rate, neat premise, well executed, good paper.

Production, Manufacturing, and Logistics
----------------------------------------

### Adjusting a railway timetable in case of partial or complete blockades

*Original Research Article* *Pages 583-593* *Ilse Louwerse, Dennis Huisman*

I have a soft spot for railway timetabling problems. They're *really, really hard*. I'll give them a pass on using a single-objective formulation, because their problem is to find solutions that are even feasible. Also, this is a problem that has to be solved really fast. My favorite tools, simulation and MOEAs, would be disasterously inappropriate when you need an answer in an hour. So, good work folks, and I'll keep thinking about how simulation and MOEAs could help you out.

### Designing a sustainable closed-loop supply chain network based on triple bottom line approach: A comparison of metaheuristics hybridization techniques

*Original Research Article* *Pages 594-615* *K. Devika, A. Jafarian, V. Nourbakhsh*

OK, this one got my interest based on the subheadings in the outline. Under "Constitutive metaheuristics", they list "Adapted imperialist competitive algorithm", "Assimilation: moving the colonies toward the imperialists", "Revolution", "Total power of an empire", "Imperialistic competition", and "Global war". Imperialist competitive algorithm, ICA, is a metaheuristic for single-objective integer problems. And it has *fantastic terminology*. Instead of restarts, they have global war! They use, of all things, an RSM to figure out how to parameterize their algorithm!

The bottom line is, they hybridized ICA with some other heuristics and applied these new algorithms to a multi-objective supply chain problem. (I'm skimming, so I'm not sure how they adapted for multi-objective optimization. Presumably strict Pareto ranking.) Bonus points for using *three* objectives. Points off for not labeling the axes on their Pareto front figure, though. (Seriously, do EJOR's editors even have time to look at all of these articles before they get published? Unlabelled axes is an obvious problem with an easy fix.) But I'll give them credit for making a comparison to GAMS too.

Anyway, the algorithms look a little clunky. If you need to use an RSM to parameterize your algorithm, things are not going your way. But like I've said, integer problems are hard. Also, this is a great example of an instance where the authors had to devote a lot of effort to parameter tuning, and also a good example of a study comparing algorithms where each algorithm had its parameters tuned for a "fair" comparison. It really clarifies the value of doing diagnostic assessment like we do, if you've got the computer for it. Reliability and controllability go right out the window when you've tuned your parameters.

### Relief inventory modelling with stochastic lead-time and demand

*Original Research Article* *Pages 616-623* *Rubel Das, Shinya Hanaoka*

Inventory management for disasters. I'll give them credit for taking on a hard problem, although I'm skeptical about whether the results could be useful given the number of assumptions you have to make and the unique challenges of each disaster. Granted, they may well address this in the paper. I've only looked at the abstract.

### Spare parts management: Linking distributional assumptions to demand classification

*Original Research Article* *Pages 624-635* *D. Lengu, A.A. Syntetos, M.Z. Babai*

Looks like they're developing probability models for spare parts demand. This is a place where I'd make simulation my first resort, but I give them credit for doing an empirical study.

Stochastics and Statistics
--------------------------

### A reliability system under different types of shock governed by a Markovian arrival process and maintenance policy K

*Original Research Article* *Pages 636-642* *Delia Montoro-Cazorla, Rafael Pérez-Ocón*

Markovian arrival process? That's a deal-breaker for me. You'd have to work really hard to convince me that it's even an approximately appropriate model.

### Forecasting the volatility of crude oil futures using intraday data

*Original Research Article* *Pages 643-659* *Benoît Sévi*

I'm personally biased against quant stuff. I think their models (Black-Scholes in particular) are deeply flawed, their assumptions are short-term, and their objectives myopic. So nothing against this paper in particular, but I dislike the field.

### Testing inference in heteroskedastic fixed effects models

*Original Research Article* *Pages 660-670* *Carlos F.A. Uchôa, Francisco Cribari-Neto, Tatiane A. Menezes*

Statistics! An improved t-test for when the assumption of normality is wrong. Great! I'm not going to read the paper, because it doesn't really bear on my work, but I'm glad this work is being done.

### Exact and approximation methods for dependability assessment of tram systems with time window

*Original Research Article* *Pages 671-686* *Marcin Kowalski, Jan Magott, Tomasz Nowakowski, Sylwia Werbińska-Wojciechowska*

Very mathematical. Somewhat interesting to me because I've ridden on Polish tram systems and they did in fact seem quite reliable to me. They must be doing something right, although I'm troubled by the assumption that you have infinite repair facilities. That seems like hand-waving to get out of a mathematical difficulty.

Decision Support
----------------

### Two-worker blocking congestion model with walk speed m in a no-passing circular passage system

*Original Research Article* *Pages 687-696* *Soondo Hong*

AOIS

### Emergency response in natural disaster management: Allocation and scheduling of rescue units

*Original Research Article* *Pages 697-708* *Felix Wex, Guido Schryen, Stefan Feuerriegel, Dirk Neumann*

Like with the other disaster paper, I applaud trying to work on a hard and urgent problem, but I'm skeptical about the results due to the necessary assumptions. Might it not be better to work on figuring out how to organize decision-making (i.e., who should make decisions, what tools should they have, and where should they locate) than to try to do it ahead of time?

### On the restricted cores and the bounded core of games on distributive lattices

*Original Research Article* *Pages 709-717* *Michel Grabisch, Peter Sudhölter*

This is on a level of abstraction that defies my attempts to understand how, or even in what domain, you could apply it.

### Consistency analysis of triangular fuzzy reciprocal preference relations

*Original Research Article* *Pages 718-726* *Fang Liu, Wei-Guo Zhang, Li-Hua Zhang*

Looks like they're trying to manage intransitive preferences. I think the search for a mathematically well-founded decision-making framework is perilous. It distracts from the fact that decision-makers' appraisal of the situation is dynamic, continually but selectively incorporating new information. Attempts to "rationalize" decision-making always seem to start from an assumption that decision-makers actually *have* a utility function, even if they have imperfect knowledge of it.

Innovative Applications of O.R.
-------------------------------

### A MIP-based approach to solve the prize-collecting local access network design problem

*Original Research Article* *Pages 727-739* *Ivana Ljubić, Peter Putz, Juan-José Salazar-González*

Definitely a hard problem. Where should you lay fiber? A mixed-integer problem, they do cutting plane plus local refinement.

### Enhanced multi-Hoffmann heuristic for efficiently solving real-world assembly line balancing problems in automotive industry

*Original Research Article* *Pages 740-754* *Johannes Sternatz*

Line balance with multiple products in a family. A hard problem, definitely worth doing. And a consequence of the kind of product family design I'm working on. Would be interesting to consider these problems at the design phase.

### Measuring performance improvement of Taiwanese commercial banks under uncertainty

*Original Research Article* *Pages 755-764* *Chiang Kao, Shiang-Tai Liu*

Quantitative finance, bank regulation.

### Electricity market clearing with improved scheduling of stochastic production

*Original Research Article* *Pages 765-774* *Juan M. Morales, Marco Zugno, Salvador Pineda, Pierre Pinson*

Electricity markets are always hard. This is basically about how you design the auctions. A worthy problem, they consider stochastic production, which is important.

Interfaces with Other Disciplines
---------------------------------

### Constant and variable returns to scale DEA models for socially responsible investment funds

*Original Research Article* *Pages 775-783* *Antonella Basso, Stefania Funari*

Not clear on why you'd nead DEA in particular, but maybe I'm just forgetting some of the specifics about how DEA works.

### Critical rationalism in practice: Strategies to manage subjectivity in OR investigations

*Original Research Article* *Pages 784-797* *R.J. Ormerod*

Interesting. I'll come back and read this one in full. I think it's a critique of OR's claim to offer "rational", scientific decision-making techniques, from a Popperian perspective.

### Maintaining the Regular Ultra Passum Law in data envelopment analysis

*Original Research Article* *Pages 798-809* *Ole B. Olesen, John Ruggiero*

A critique of and recommendations for DEA from a microeconomic standpoint.

Short Communication
-------------------

### Notes on classifying inputs and outputs in data envelopment analysis: A comment

*Pages 810-812* *Mehdi Toloo*

An ongoing dispute about flexible measures (whatever that means, exactly) in DEA. What's interesting is how far apart the articles are. This is a 2014 response to a 2012 paper criticizing a 2009 paper, reinforcing my criticism of EJOR for being absolutely glacial. The pace of this discussion is far too slow to be productive.

Bibliography
============

Fonseca, Carlos M, Luis Paquete, and Manuel López-Ibánez. 2006. “An Improved Dimension-sweep Algorithm for the Hypervolume Indicator.” In *IEEE Congress on Evolutionary Computation, 2006. (CEC 2006)*, 1157–1163. IEEE.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
