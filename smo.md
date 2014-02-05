# Structural and Multidisciplinary Optimization Quick Capsule Summaries

 *Matthew Woodruff*

 *February 3, 2014*

## Global Summary

These issues (Nov 2013 - Jan 2014) are largely concerned with topology optimization.
This is a field dominated by a gradient method (MMA).
Other techniques get occasional notice: SQP, interior point methods, PSO and GA.
One paper used DE and CMAES (good on them!)
PSO seems to get some customization.
Not really what I was expecting.
Maybe these issues are overrepresenting the "structural" and underrepresenting the "multidisciplinary" aspect.


## Note

I've copy-pasted the TOC and I'm adding some comments to each article to get a feel for where the community is.
I'm trying to figure out how the community sees optimization (as something to be researched / improved, or as a tool on the shelf), and what they're using in general.

## Volume 49, Issue 1, January 2014

### Summary

Topology optimization is the theme of this issue.
The method of moving asymptotes seems popular, although fairly unsophisticated EA use is also in evidence.
Rolling your own optimization method is also not unusual.
There's "an iterative method we made up", there's doing the hard math and solving your problem as an equation, factorial design, new gradient approaches.

### A survey of structural and multidisciplinary continuum topology optimization: post 2000

 *Joshua D. Deaton, Ramana V. Grandhi Pages 1-38*

Topology optimization is trying to optimize the size and placement of voids in a structure.
It's where all of those pictures of fuzzy trusses come from.
It's really hard.
They do have some evolutionary methods ("hard-kill" and "soft-kill"), but it seems like these use old-school binary-coded GAs and all of the sophistication goes into the analysis side.
Special-purpose solvers exist and seem to be the standard.
An interesting representation inspired by biological cell division has emerged, and is compatible with GAs.

### Parameter-free optimum design method of stiffeners on thin-walled structures
 *Yang Liu, Masatoshi Shimoda Pages 39-47*

Skipped --- not interested in other people's new optimization methods at the moment, but in how they're using existing methods.

### Rules for trajectory updating in decision based design
 *Vijitashwa Pandey, Zissimos P. Mourelatos Pages 49-57*

I had no idea what DBD was before just now.
Basically it couples a single objective optimizer with software that asks the user for rankings periodically.
The idea is to figure out the user's utility function.
(Based on the assumption that such a thing exists and that it is possible to determine it.)
This sounds similar to something Ravi Ravindran mentioned in his class.
It's human-in-the-loop optimization.

Anyway, the upshot is that there's an interesting parallel between this and MOVA.
The difference is basically that I'm not calling for a utility function or anything like it.
My model user is searching for an expressive problem formulation, i.e., information rather than optimality.

### Thermal-composite design optimization for heat flux shielding, focusing, and reversal
 *Ercan M. Dede, Tsuyoshi Nomura... Pages 59-68*

They used the "gradient based Method of Moving Asymptotes optimizer", along with COMSOL.



### Stochastic minimax optimal control strategy for uncertain quasi-Hamiltonian systems using stochastic maximum principle
 *R. C. Hu, Z. G. Ying, W. Q. Zhu Pages 69-80*

Math.
I have lots of respect for math-ing a problem to death, but not what I'm interested in.

### Structural topology optimization on dynamic compliance at resonance frequency in thermal environments
 *Xiongwei Yang, Yueming Li Pages 81-91*

Skipped --- after skimming  the review on page 1, I'm not too hopeful that topo optimization has a lot to contribute to my lit review.

### Optimal design of elastic plastic frames accounting for seismic protection devices
 *Salvatore Benfratello, Luigi Palizzolo... Pages 93-106*

Earthquakes: a problem for Italy.
They rolled their own iterative search technique for steel frames that address the requirements of Italian building code.
Interesting aspect is that they revised their formulation.

### Direct gradient projection method with transformation of variables technique for structural topology optimization
 *Cheng Chang, Andrew Borgart, Airong Chen... Pages 107-119*

Skipped.  It's about topo optimization and the introduction of a new optimization technique, not too interested.

### Structural dynamic topology optimization based on dynamic reliability using equivalent static loads
 *Ming Li, Wencheng Tang, Man Yuan Pages 121-129*

Uses MMA, according to the abstract.
Is MMA the search-as-a-service?


### Design optimization of a laser printer cleaning blade for minimizing permanent set
 *Chang-Hyun Park, Jun-Hee Lee, Jae-Hyuk Jeong... Pages 131-145*

Optimized parts for a Samsung printer.
Not chasing their references down, but it looks like they're using an NSGAII derivative.
The title of the reference is "Multidimensional clustering interpretation and its application to optimization of coolant passage of a turbine blade."
In the text, they just say that they used the referenced EA, no further information.

### Factor screening and multivariable crashworthiness optimization for vehicle side impact by factorial design
 *Shujuan Hou, Tangying Liu, Duo Dong... Pages 147-167*

Sounds great, the title tells me all I need to know.

### A comparison between optimization-based human motion prediction methods: data-based, knowledge-based and hybrid approaches
 *Ilaria Pasciuto, Sergio Ausejo...*

"Interior point, with analytical Jacobian and Hessian".
Trying to determine human motion paths.
Talk about your *seriously* hard problems.

## Volume 48, Issue 6, December 2013

### Summary

The product family article by Chowdhury, Messac, and Khire is especially good.
So is the de Paly et al paper, which is about hydrogeology and might almost have come from the Reed group, based on its figures.

I'm seeing a lot of discrete problems in this issue.
And no agreement about how to do them.

There's a fight between Rozvany and Logo in these pages.
Rozvany lays it down pretty hard, Logo's position appears demolished.


### Topology optimization approaches
 *Ole Sigmund, Kurt Maute Pages 1031-1055*

Wait, so they had already published a topo optimization review in December, and then they publish another one the very next month?
Covers much of the same ground as the January review.
Interesting note, "A problem with the discrete ESO/BESO approaches and variants thereof is lack of algorithmic convergence and selection of appropriate stopping criteria."
ESO/BESO are the EA approaches.
This is interesting because it views EAs very much through the lens of traditional optimization.

Their conclusion wrt optimizers is that MMA is the way to go, with mathematical programming (particularly interior point) showing promise, and the noted objection to EAs.
An interesting problem they're having is parameterization.
Interesting because that is such a focus of my own study, in a different context.

Good review, despite being down on the tech in which I'm personally invested.
I like their approach and their encouragement of code release.
(Although, ugh, Matlab.)

### Selection of initial designs for multi-objective optimization using classification and regression tree
 *Lei Shi, Yan Fu, Ren-Jye Yang, Bo-Ping Wang... Pages 1057-1073*

Very interesting, actually skimmed the whole thing.
Finding the feasible region (or at least a subset of it).
Their whole idea is to do optimization faster by finding initial feasible solutions.
They then use NSGAII to optimize (so they need all the help they can get!)

### Simultaneous design of structural layout and discrete fiber orientation using bi-value coding parameterization and volume constraint
 *Tong Gao, Weihong H. Zhang, Pierre Duysinx Pages 1075-1088*

Laminates.
Topo optimization.
Lit review indicates use of PSOs and GAs, but they seem to do gradient descent with multiple weights.

### Investigating the commonality attributes for scaling product families using comprehensive product platform planning (CP3)
 *Souma Chowdhury, Achille Messac, Ritesh Khire Pages 1089-1107*

Hey, product families!
A new commonality index.
PSO.
This is good stuff.
Tim is the first person they cite.
Another example of finding the feasible set of possible platforms first, here at greate computational expense.
(What that means is just that the platforms are non-contradictory, i.e., that $x_j$ is common for products A and B, and for products B and C, so it must also be common for A and C.
It is a problem arising from representation.)

Very usefully, they give an expression for the number of possible platform combinations.
This is really good!

Optimization: MDPSO.
MD is for mixed-discrete.
This was developed by Chowdhury.

Holy crow, they did the electric motor problem.
2, 4, and 6 motors.
And they compare the results to Tim's 2006 book chapter.

### Aircraft morphing wing design by using partial topology optimization
 *S. Sleesongsom, S. Bureerat, K. Tai Pages 1109-1128*

Morphing wing.
Max delta lift effectiveness, max buckling factor, min mass.
Uses PBIL (MOPBIL).
A PMBGA, I believe.

### A modified directed search domain algorithm for multiobjective engineering and design optimization
 *Tohid Erfani, Sergey V. Utyuzhnikov... Pages 1129-1141*

Directed search domain (DSD) is an optimization algorithm.
"Exploits anchor points which are the minima of each objective."
Ouch, that's going to hurt if you want to fill in the middle.
Reading on...
NNC and NBI work by reducing the design space.

DSD does affine transformations on the objectives!?
Anyway, this is a paper about a classical optimization approach for multi-objective problems.

### Modelling and shape optimization of an actuator
 *Charles-Henri Bruneau, Frédéric Chantalat... Pages 1143-1151*

Optimize an actuator for flow profile at the exit section.
Navier-Stokes.
MEMS active flow control.

But this is really another topo optimization paper.
Citing Bendsoe and Sigmund's 2003 SIMP paper is a dead giveaway.
Key challenge is that the target flow is expressed statially, but the actual flow is dynamic.

Iterative with stopping conditions.

### Optimization under worst case constraints...a new global multimodel search procedure
 *Michael de Paly, Claudius M. Bürger... Pages 1153-1172*

Interesting that they pull in a hydrogeology problem.
More efficient robust design.
Optimal remediation for an uncertain contaminant plume.
Cites a paper from Minsker.
As well as the Nicklow 2010 paper that Pat is on.

Computational efficiency is attained by trying to evaluate only the "critical realizations", i.e., the ones that are most likely to result in constraint violations.
Basially, you're optimizing a set of critical realizations at the same time as you're optimizing your problem.
They do Bayesian updating to keep super-realizations from dominating after the search has moved on.

The problem: optimal well capture.
They tried different stack-ordering approaches as well as different optimizers (DE, CMAES).
They made some very familiar looking shaded-rectangle figures.
They used the EvA2 optimization framework.
EvA2 is [http://www.ra.cs.uni-tuebingen.de/software/EvA2/introduction.html].
Not surprisingly, their colleagues wrote it.
It's Java-based, has a number of SO and MO optimizers built in.
Docs, and presumably the framework, written Marcel Kronfeld under Prof. Dr. Andreas Zell.

Anyway, this is interesting because they're basically doing auto-adaptive updates to the ensemble.
And because they chose decent optimization algorithms.
The downside is that they're talking about something that means two solutions might be compared based on evaluation of different states of the world.


### Equivalence of continuum and discrete analytic sensitivity methods for nonlinear differential equations
 *Shaobin Liu, Robert A. Canfield Pages 1173-1188*

This is for finding derivatives so that you can use gradient based methods.

### Discussion on the optimization problem formulation of flexible components in multibody systems
 *Emmanuel Tromme, Olivier Brüls... Pages 1189-1206*

Interesting setup in the abstract --- comparing optimization approaches for problems with dynamic loading, like robot arms.
Modeling has lately merged MBS and FE, with optimization for dynamics approximated by doing multiple static loads.
Gradient based methods need derivatives, which is computationally efficient unless you're doing, say, a feasibility study.
MMA is likely to be inappropriate.

Problem: optimize the widths of two robot arms for a 2-dof robot.
Optimization with ConLin, GCM, SQP.
Different algorithms don't converge to the same point.
ConLin gives better results.

They also did GA and surrogate-based optimization (SBO), also with GA.
And guess what, GA doesn't do so great.
(They were actually using GA, I think.
As in *Goldberg's* GA, the one that's been firmly obsolete for over a decade.)
They note that GA might do better with a tuning of algorithm parameters.

Boss Quattro?  A proprietary multidisciplinary analysis framework that includes several optimizers.
So the interesting thing here is that *these* are actually the people I'm looking for.
They took some algorithms off the shelf and used them.
It's also interesting that they took more than one and compared them.
(A similar product, I think, to Boss Quattro is ModeFrontier.
The interesting thing they have in common is that they're all-in-one.
They integrate analysis like DOE, factor screening, sensitivity, and metamodeling, with optimization.)

Second problem: connecting rod.
280s for one simulation with a fine mesh.
Looks like they didn't touch GA for this one.


### On the optimal layout of structures subjected to probabilistic or multiply loading
 *János Lógó Pages 1207-1212*

Robust topo optimization.
Using math programming, I think.
(This one is just a "discussion".)

### Critical examination of recent assertions by Logo (2013) about the paper ...Analytical and numerical solutions for a reliability based benchmark example (Rozvany and Maute 2011)
 *George Rozvany, Kurt Maute Pages 1213-1220*

They're fighting about a "probabilistic topology benchmark example".
They claim to have proved that a probabilistic problem is equivalent to a deterministic problem with two alternative load conditions.
Their argument makes sense as long as you agree with their assumption that you're interested in the two points of maximum compliance.
Oooh, they call the other guy "incoherent".
That's not pulling any punches!

Giving the benefit of the doubt, it reads like a case of people talking past each other.
The authors have set up a situation where deterministic analysis applies, and they see the criticism as unfounded attacks on their (correct) mathematics.
It sounds like the other guy wants to make a (valid) point that such special cases aren't representative, but he made a crucial mistake in attacking the authors on their quite well-founded derivations.
Maybe not, though.
This response gives him such a thorough thrashing that I have a hard time seeing how he could justify his work.

## Volume 48, Issue 5, November 2013

I forgot to download the TOC for this issue, so these are missing page numbers.

### Summary

After reading three issues of SMO, I'm finding that it's a lot more structural and a lot less multidisciplinary than I expected.
Topology optimization and its kin are getting most of the attention.

### Towards a space reduction approach for efficient structural shape optimization
 *Balaji Raghavan , Piotr Breitkopf , Yves Tourbier , Pierre Villon*

Shape optimization, design space reduction.  Morphing.  Gradient based optimization.

### George Rozvany and Tomasz Lewinski (eds): Topology optimization in structural and continuum mechanics
 *Noemi Friedman , Vanda Pomezanski , Erika Pinter*

Book review.
The book is a compilation of lecture notes on topo optimization.
The lesson to take away from this is that topo optimization is a hot topic in SMO, in case you hadn't noticed.

### Rankine's Theorem for the design of cable structures
 *Alessandro Beghini , Lauren L. Beghini , Joshua A. Schultz , Juan Carrion , William F. Baker*

Visual search.  Cable nets of maximum stiffness.
Lit review goes back to the 17th century, which is neat.

Optimization using `fmincon`.

### Shape optimization of the stokes flow problem based on isogeometric analysis
 *Byong-Ug Park , Yu-Deok Seo , Ole Sigmund , Sung-Kie Youn*

Shape optimization.  Gradient based.

### Optimal design of laminate composite isogrid with dynamically reconfigurable quantum PSO
 *K. Lakshmi , A. Rama Mohan Rao*

They invented a new PSO to optimize the design of a stiffened laminate composite cylinder.
It's "quantum" in that the particles have indeterminate position.
(Doesn't that mean a lot more function evals in practice?)
They appear to have done only one run of each algorithm.
And single-objectice (normalized price) only.

###Design of in-plane piezoelectric sensors for static response by simultaneously optimizing the host structure and the electrode profile
 * D. Ruiz , J. C. Bellido , A. Donoso , J. L. Sanchez-Rojas*

They use MMA.

### Density filters for topology optimization based on the Pythagorean means
 *Krister Svanberg , Henri Svard*

More fuzzy trusses.

MMA.

### Vibration reduction by natural frequency optimization for manipulation of a variable geometry truss
 *Atsuhiko Senba , Kosuke Oka , Morio Takahama , Hiroshi Furuya*

Motion planning so as not to excite harmonics in a truss.
SQP, although they mention that maybe PSO or GA would be appropriate.

###Time-dependent reliability analysis with joint upcrossing rates
 *Zhen Hu , Xiaoping Du*

Reliability analysis.
Compares some other methods to monte-carlo simulation.
Poisson assumption is not always right.
(A good point!)

### Near-optimal solutions for two point loads between two supports
 *Carlos Olmedo Rojas , Mariano Vazquez Espi, Jaime Cervera Bravo , Carlos Vazquez Espi*

Analytical plus simulated annealing.

### Optimum design of grillage structures to LRFD-AISC with teaching-learning based optimization
 *Tayfun Dede*

Made up a single objective metaheuristic based on a teacher-student analogy.

### Isogeometric shape optimization in fluid mechanics
 *Peter Nørtoft , Jens Gravesen*

Shape optimization.  Iterative, gradient-based, non-linear optimizer.

### Optimization of stresses in a local region for the maximization of sensitivity and minimization of cross-sensitivity of piezoresistive sensors
 *Qi Xia , Tielin Shi , Shiyuan Liu , Michael Yu Wang*

Gradient-based, level set.

## Volume 48, Issue 4, October 2013

### Summary

I'm glad I went back to October.  A fair number of topo optimization papers, but also a good mix of others.
Including two good ones from Mattson's direction.
I'm definitely not finding what I expected, especially now that I'm looking at the papers where I expected to find it.
And that is, I was expecting to see NSGAII get used like a swiss-army knife, without much reflection.
But what I'm actually seeing is people making up new optimization techniques left and right.
Contrasted with topo optimization, where MMA rules the day.

### Note

I'm done reading topo optimization papers for now.
I'm marking them "FT", for fuzzy trusses and skipping over them.

### A critical comparative assessment of differential equation-driven methods for structural topology optimization
 *Arun L. Gain, Glaucio H. Paulino Pages 685-710*

FT

### A mesh evolution algorithm based on the level set method for geometry and topology optimization
 *Grégoire Allaire, Charles Dapogny    Pages 711-715*

FT

### On the similarities between micro/nano lithography and topology optimization projection methods
 *Miche Jansen, Boyan S. Lazarov    Pages 717-730*

FT

### Stiffening of restrained thermal structures via topology optimization
 *Joshua D. Deaton, Ramana V. Grandhi Pages 731-745*

FT

### An optimization-based method for designing modular systems that traverse dynamic s-Pareto frontiers
 *P. K. Lewis, C. A. Mattson Pages 747-762*

Good stuff.  Changing preferences yield changing Pareto frontiers.
Should read in more detail.

### The smart normal constraint method for directly generating a smart Pareto set
 *B. J. Hancock, C. A. Mattson Pages 763-775*

Direct generation of (smart, i.e., interesting) Pareto optimal points.
Optimize many single objective problems.
Uses gradient methods but doesn't have to.
Maybe I'm misreading this, but it sounds expensive for many-objective cases.

### Determination of realistic worst imperfection for cylindrical shells using surrogate model
 *Bo Wang, Peng Hao, Gang Li, Yaochu Fang    Pages 777-794*

Interesting, they do surrogate based optimization, and they use a multi-island GA.
That's pretty solid.

### Stacking sequence optimization with genetic algorithm using a two-level approximation
 *Shenyan Chen, Zhiwei Lin, Haichao An    Pages 795-805*

Laminates.
I think they have the GA determining what layers, and then a classical optimization method figuring out the optimal thickness for each ply.

### A hyper-heuristic approach to aircraft structural design optimization
 *Jonathan G. Allen, Graham Coates    Pages 807-819*

Conceptual aircraft design.
I went to a talk on hyper-heuristics once and concluded that the whole idea was BS.
But I think that was a bad talk, because this is making considerably more sense.
This approach allows more heterogeneity than Borg.
However, it tries to parameterize the different heuristics, which I see as a misstep.
It takes a lot of information to auto-adapt parameters.  Probably more than you've got.
At the "hyper" level, it's doing reinforcement learning.

Anyhow, much respect.  They've got way more DVs (17!) than the GAA problem, and an FE model to boot.
Although, it's not a product family, so I've got that going for me.

### Adaptive heuristic search algorithm for discrete variables based multi-objective optimization
 *Long Tang, Hu Wang, Guangyao Li    Pages 821-836*

A new metamodeling / multi-objective optimization approach.
Compares with NSGAII.
Didn't notice evidence of random seed analysis.
Metamodels for problems with discrete variables.

### Design optimization of balloon-expandable coronary stent
 *Hongxia Li, Xicheng Wang Pages 837-847*

Kriging, ANSYS.

### On the allowance for support costs in Prager-Rozvany's optimal layout theory
 *Mariano Vázquez Espí Pages 849-852*

FT

### Exact truss topology optimization for external loads and friction forces
 *Tomasz Soko, George I. N. Rozvany Pages 853-857*

FT
