# Structural and Multidisciplinary Optimization Quick Capsule Summaries

 *Matthew Woodruff*

 *February 3, 2014*

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

Oooh, this one has a "Discussion" and "Authors' Reply".
An academic cage fight!

The product family article by Chowdhury, Messac, and Khire is especially good.

I'm seeing a lot of discrete problems in this issue.
And no agreement about how to do them.

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

### Modelling and shape optimization of an actuator
 *Charles-Henri Bruneau, Frédéric Chantalat... Pages 1143-1151*

### Optimization under worst case constraints...a new global multimodel search procedure
 *Michael de Paly, Claudius M. Bürger... Pages 1153-1172*

### Equivalence of continuum and discrete analytic sensitivity methods for nonlinear differential equations
 *Shaobin Liu, Robert A. Canfield Pages 1173-1188*

### Discussion on the optimization problem formulation of flexible components in multibody systems
 *Emmanuel Tromme, Olivier Brüls... Pages 1189-1206*

### On the optimal layout of structures subjected to probabilistic or multiply loading
 *János Lógó Pages 1207-1212*

### Critical examination of recent assertions by Logo (2013) about the paper ...Analytical and numerical solutions for a reliability based benchmark example (Rozvany and Maute 2011)
 *George Rozvany, Kurt Maute Pages 1213-1220*

