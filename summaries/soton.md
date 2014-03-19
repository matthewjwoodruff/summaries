University of Southampton Computational Engineering and Design Group (CEDG)
===========================================================================

I did a Google Scholar search for PDFs they've posted (site:soton.ac.uk). Some of them turned out to be random abstracts.

Summary
=======

The book chapter and the survey paper are the ones to focus on. They cover a lot of the ground I'm looking at. Their statistical techniques are very sophisticated, but they don't have Borg.

Multiobjective Optimization Using Surrogates
============================================

*Ivan Voutchkov and A. J. Keane*

I looked this one up, it was published as Chapter 7 of a book called *Computational Intelligence in Optimization* (Springer, 2010).

They hit the Moore's law argument right at the start. Basically, "people can afford clusters now." Starts with a quick demo of ZDT2, showing the value of using a surrogate. Uses NSGA2 as a generic multiobjective solver, a reasonable choice. Downside: test functions, low dimension.

This paper makes me want to jump ahead to MEME straightaway. It's an obvious antecedent to MEME --- multiple surrogates, the comparison of with-surrogate optimization to plain optimization, the use of an MOEA. MEME would put all the pieces together.

Recent Advances in Surrogate-Based Optimization
===============================================

Cite (Forrester and Keane 2009).

A review paper. Details on different kinds of surrogates as well as infill criteria (including trust-region). Makes me wonder about my "worse models are better" idea, i.e., early on you can't afford to estimate many parameters so you make a model you know will be wrong. When you have a lot of processors, you can afford to devote some of them to developing and optimizing a cheap model. Also has a multi-objective section, "multi-objective expected improvement." Although I think in a parallel environment you'd do better sampling the EI Pareto front, if that makes any sense.

A Scalarizing One-Stage Algorithm for Efficient Multi-Objective Optimization
============================================================================

*Glenn I. Hawe and Jan K. Sykulski*

This is a two-pager. Two-stage means a sample -\> model -\> sample loop. One-stage means evaluating a new point based on EI?

Balancing Exploration and Exploitation using Kriging Surrogate Models in Electromagnetic Design Optimization
============================================================================================================

*Glenn I. Hawe and Jan K. Sykulski* (2006)

This one interests me because it's about electromagnetics. Although, at one page, this is just a sketch.

An Enhanced Probability of Improvement Utility Function for Locating Pareto Optimal Solutions
=============================================================================================

*Glenn I. Hawe and Jan K. Sykulski*

Another sketch from these two, regarding probability of dominance.

New Trends in Optimization in Electromagnetics
==============================================

*Jan K. Sykulski* (Invited paper from ISTET07 Conference)

MO optimization of an electron gun is given as an example. Some others as well --- apparently optimization is a hot topic in electromagnetics. (Or it was in 2007, anyhow.)

Multi-Fidelity Optimization via Surrogate Modelling
===================================================

*Alexander I. J. Forrester and Andra ́s So ́ bester and Andy J. Keane*

This is from Proc. R. Soc. A (2007) 463, 3251–3269.

Co-kriging based wing optimization. Other than the example, seems pretty similar to, if more focused than, the "Recent Advances" paper.

Forrester, Alexander IJ, and Andy J Keane. 2009. “Recent Advances in Surrogate-Based Optimization.” *Progress in Aerospace Sciences* 45 (1): 50–79.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
