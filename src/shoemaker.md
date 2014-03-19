# Papers Published with Christine Shoemaker

These papers are listed on her Cornell website.

# Summary

Heavy focus on two-phase surrogate-based optimization with RBF.
    Which I think is a pretty good technique.
    However, I see no evidence of multiobjective work.
    The closest I even saw to bi-objective optimization was a paper I didn't 
        summarize, the Flicker paper, where they optimize performance 
        constrained by power.
    Well, there's also Müller's SO-I paper, which at least has constraint
        handling for expensive constraints.
    I need to scan some more of the titles, but I don't think this group
        touches multi-objective optimization.

# Impact of human activities on stream flow in the Biliu River basin, China

 *Chi Zhang and Christine A. Shoemaker and Joshua D. Woodbury and Mingliang
    Cao and Xueping Zhu*

 *August 2013 Hydrological Processes 27(17) pp 2509-2523*

Hydrologic modeling.  Fuzzy Inference.
    Effect of multiple factors including local human activity and global
        climate change.

# Stochastic Assessment of Long-Term Impacts 
## of Phosphorus Management Options on Sustainability with and without Climate Change

 *Joshua Woodbury and Christine A. Shoemaker*

 *J. Water Resour. Plann. Manage. 139(5), 512-519 (2013)*

Hydrologic modeling.
    Effect of best management practices on phos loading in the Cannonsville
        Reservoir.
    Based on the model, the reservoir has a phos problem in most future 
        scenarios.

# Estimating Maximal Annual Energy Given Heterogeneous Hydropower Generating Units
## With application to the Three Gorges System

 *Fang-Fang Li and Christine A. Shoemaker and Jia-Hua Wei and Xu-Dong Fu*

 *J. Water Resour. Plann. Manage. 139(3), 265-276 (2013)*

This is an optimization paper.
    Lots of couplings, both water and electric.
    Lots of decisions, because of time, so the optimization is hierarchical.
    Interesting because the analysis is retrospective, i.e., not trying to
        optimize a policy but to understand what could have been done given
        perfect foresight and optimal decisions at all times.

# Estimation of plume distribution for carbon sequestration
## Using parameter estimation with limited monitoring data

 *Antoine Espinet and Christine A. Shoemaker and Christine Doughty*
 
 *Water Resources Research 49(7) 4442-4464*

Model calibration.
    Stochastic RBF.
    GCS: geological carbon sequestration

The lit review in paragraph 11 has a bunch of citations for reducing the
    number of parameters because you don't have enough data.
    The GCS model is expensive: 2 hours.
    Interesting quote, "Gradient-based algorithms are usually local 
        optimization algorithms unless they have a restart option."
    Although not as strictly, you could say that about EAs too.

Downside for me is that the objective is minimizing a weighted sum of squares.
    $f(p) = \sum_{i=1}^n\left(\frac{z_i^*-z_i(p)}{\sigma_i}\right)^2$
    Where p is the vector of input parameters (which are decision variables 
        here.)
    The $z^*$ are actual measurements, $z(p)$ is the response surface 
        prediction for that point.
    Subscript $i$ is for the point itself.
    So $f(p)$ is expensive because you're simulating the plume at every
        point.
    $\sigma$ is subscripted because some of the points are measuring 
        pressure and some are measuring saturation.
    How is there a single response surface model here?

Method: Surrogate Surface Optimization.
    Stochastic RBF global optimization is appendix E.
    Method of Regis and Shoemaker (2007).
    It strikes me that the multimodality of the problem (which they keep 
        bringing up) originates from the fact that they're using an 
        aggregate objective function.
    Algorithm:

1.  LHS $m=2d+3$
2.  Create a (response?) surface
3.  Stochastic RBF picks a new point (the best by optimization of the 
    response surface)
4.  Function evaluation at that point
5.  Update response surface
6.  Goto 3

Now, this doesn't seem to be using EI, just greedily going for the best point.

# A quasi-multistart framework for global optimization
## of expensive functions using response surface models

 *Rommel G. Regis and Christine A. Shoemaker*

 *J. Glob. Optim (2013) 56(4) 1719-1754*

Quasi-multistart means that they try to balance exploration and 
    exploitation by bouncing back and forth between the best explored
    and best unexplored local minimum.
    Explored means sampled for real, and not just in the RBF metamodel.
    Better than EGO, they conclude.

Lit review mentions Forrester's book, also Tim's 2001 paper on Kriging.
    Lit review is quite good and bears returning to.

# SO-I
## A surrogate model algorithm for expensive nonlinear integer programming
## problems including global optimization applications

 *Juliane Müller and Christine A. Shoemaker and Robert Piché*

 *J. Glob. Optim. (2013) doi 10.1007/s10898-013-0101-y (online, not yet in 
 print)*

Integer optimization.
    Can do constrained opt. without an initial feasible point.
    Uses an RBF metamodel.
    Constraint handling is a min-max on the constraint functions.
    Includes a description of the algorithm, which is two-phase.
    Also includes a very easy to follow description of RBFs.
    This is the first description I've see where I think it would be pretty 
        straightforward for me to implement it myself.
    Well done, but with an assumption that single-objective optimization is
        the way to go, and no particular justification for that assumption.

<!--
# Bibliography
-->

<!--
vim:ts=4:sw=4:expandtab:wrap lbr:ai
-->
