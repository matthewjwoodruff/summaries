Papers Published with Christine Shoemaker
=========================================

These papers are listed on her Cornell website.

Impact of human activities on stream flow in the Biliu River basin, China
=========================================================================

*Chi Zhang and Christine A. Shoemaker and Joshua D. Woodbury and Mingliang Cao and Xueping Zhu*

*August 2013 Hydrological Processes 27(17) pp 2509-2523*

Hydrologic modeling. Fuzzy Inference. Effect of multiple factors including local human activity and global climate change.

Stochastic Assessment of Long-Term Impacts
==========================================

of Phosphorus Management Options on Sustainability with and without Climate Change
----------------------------------------------------------------------------------

*Joshua Woodbury and Christine A. Shoemaker*

*J. Water Resour. Plann. Manage. 139(5), 512-519 (2013)*

Hydrologic modeling. Effect of best management practices on phos loading in the Cannonsville Reservoir. Based on the model, the reservoir has a phos problem in most future scenarios.

Estimating Maximal Annual Energy Given Heterogeneous Hydropower Generating Units
================================================================================

With application to the Three Gorges System
-------------------------------------------

*Fang-Fang Li and Christine A. Shoemaker and Jia-Hua Wei and Xu-Dong Fu*

*J. Water Resour. Plann. Manage. 139(3), 265-276 (2013)*

This is an optimization paper. Lots of couplings, both water and electric. Lots of decisions, because of time, so the optimization is hierarchical. Interesting because the analysis is retrospective, i.e., not trying to optimize a policy but to understand what could have been done given perfect foresight and optimal decisions at all times.

Estimation of plume distribution for carbon sequestration
=========================================================

Using parameter estimation with limited monitoring data
-------------------------------------------------------

*Antoine Espinet and Christine A. Shoemaker and Christine Doughty*

*Water Resources Research 49(7) 4442-4464*

Model calibration. Stochastic RBF. GCS: geological carbon sequestration

The lit review in paragraph 11 has a bunch of citations for reducing the number of parameters because you don't have enough data. The GCS model is expensive: 2 hours. Interesting quote, "Gradient-based algorithms are usually local optimization algorithms unless they have a restart option." Although not as strictly, you could say that about EAs too.

Downside for me is that the objective is minimizing a weighted sum of squares.

Method: Surrogate Surface Optimization. Stochastic RBF global optimization is appendix E. Method of Regis and Shoemaker (2007). It strikes me that the multimodality of the problem (which they keep bringing up) originates from the fact that they're using an aggregate objective function. Algorithm:

1.  LHS *m* = 2*d* + 3
2.  Create a (response?) surface
3.  Stochastic RBF picks a new point (the best by optimization of the response surface)
4.  Function evaluation at that point
5.  Update response surface
6.  Goto 3

Now, this doesn't seem to be using EI, just greedily going for the best point.

Bibliography
============

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
