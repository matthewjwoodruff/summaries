# Structural and Multidisciplinary Optimization Quick Capsule Summaries

 *Matthew Woodruff*

 *February 3, 2014*

I've copy-pasted the TOC and I'm adding some comments to each article to get a feel for where the community is.
I'm trying to figure out how the community sees optimization (as something to be researched / improved, or as a tool on the shelf), and what they're using in general.

## Volume 49, Issue 1, January 2014

### Summary

Topology optimization is the theme.
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


