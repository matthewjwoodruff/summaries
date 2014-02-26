Journal of Mechanical Design Quick Capsule Summaries
====================================================

*Matthew Woodruff*

*February 17, 2014*

Note
====

JMD's online view has a nice feature where you can expand the abstracts. I'm not including them, but it makes for an easy way to scan an issue. (And to be clear, that's all I've really done here.)

General Summary
===============

One thing that seems to be lacking is much of a multi-objective approach. Not that it's entirely absent (viz the Tech Brief from April), but it's not very sophisticated, nor is it widespread. SMO definitely seems like a more receptive venue for multi-objective optimization, at least if you're not doing Fuzzy Trusses, so that can't be how I frame the paper if I want to target JMD. Design novelty shows up, so I can maybe work that angle. Maybe something like how your model affects the diversity of your designs?

April 01, 2014 Volume 136, Issue 4
==================================

Summary
=======

It turns out this isn't a full issue. If you click on the current issue online, it just takes you to the one they're currently filling up. That's also why the April issue is already available in February.

I'm not sure if this is a big enough sample to develop any themes. JMD definitely has a focus on real things that you might build. It's very much not about concept-level optimization.

Research Papers
---------------

### User-Centered Design Customization of Rugby Wheelchairs Based on the Taguchi Method

*Clara C. Usma-Alvarez, Franz K. Fuss and Aleksandar Subic* J. Mech. Des. 136, 041001 (2014) (); doi:10.1115/1.4026029

Custom wheelchair design for wheelchair rugby. That's "murderball", right? Anyway, they took actual people and did a DOE on wheelchair design for each of them. As always, respect for people who go out and do actual physical measurements!

### A Function Based Approach for Product Integration

*Vishwa Kalyanasundaram and Kemper Lewis* J. Mech. Des. 136, 041002 (2014) (); doi:10.1115/1.4026032

Reconfigurable / multifunction products. A drill / dustbuster chimera.

### Value-Based Global Optimization

*Roxanne A. Moore, David A. Romero and Christiaan J. J. Paredis* J. Mech. Des. 136, 041003 (2014) (); doi:10.1115/1.4026281

Surrogate modeling, multi-fidelity modeling. Surrogate gives more weight to data from higher fidelity models. Then it looks like they optimize a utility function. No clue about the application. Sounds similar to what I had in mind for MEME, except it stops when it decides the information isn't valuable any more.

Fulltext access to JMD was broken for a while, so I downloaded (Moore 2012), about which I had [a lot to say](moore_2012_valuebased.md).

### The Impact of Team-Based Product Dissection on Design Novelty

*Christine A. Toh, Scarlett R. Miller and Gül E. Okudan Kremer* J. Mech. Des. 136, 041004 (2014) (); doi:10.1115/1.4026151

Social issues around design. Novelty is desirable. You get more novel designs from designers who have been exposed to similar products. The idea is, you have more ideas once you have some idea how a product of this nature is put together. This makes sense intuitively, but I'd call out the use of freshmen as test subjects. As with many studies on people, there's a big difference between college freshmen and the general population.

**Reflection:** Design novelty is an interesting point. Multi-objective optimization *per se* only gets you so far. It will get you designs you didn't expect, that are Pareto-optimal wrt your objectives, but only within the context of your objectives. Real novelty means having an insight, conceiving the whole problem anew. New objectives, new product, likely something your model can't even evaluate properly. This is actually a challenge and an opportunity for MOVA --- on the one hand, it bumps up against the limits of the tools you have. You can't optimize what you can't model. On the other hand, MOVA gives you information that might drive you to make new models. Either way, the search for novelty takes you somewhat beyond the scope of MOVA.

Technical Brief
---------------

### Multi-Objective Design Optimization of a Variable Geometry Spray Fuel Injector

*J. R. Archer, Tiegang Fang, Scott Ferguson and Gregory D. Buckner* J. Mech. Des. 136, 044501 (2014) (); doi:10.1115/1.4026263

Simulation (CFD) based design optimization of a fuel injector. Using MOGA!? Oh, not actually. He's using the NSGA-II built in to the Matlab Global Optimization Toolbox. He calls it "the MOGA in the Matlab Global Optimization Toolbox," which is fair enough. Actually, this is quite a good example of somebody using search as a service, and I should cite it in the MOEA comparison paper.

He's got function evaluations that run on the order of seven minutes. And, oh my. Oh my, oh my. How the function evaluations are carried out is something new. A master desktop machine is running Matlab, which is running NSGAII and creating designs to evaluate. It, and two other desktop machines then create Ansys input files for each design. These are then pushed to a HPC system using, get this, PuTTY plus AutoIT. The HPC system then does a bunch of Ansys evaluations in parallel. So as far as I can tell, they made a macro to copypaste between PuTTY and Matlab, and that's how design evaluations happen.

March 01, 2014 Volume 136, Issue 3
==================================

Summary
-------

Lots of papers about metamodeling. I think the model comparison paper could find a home here, if I frame it right. They talk about error, optimization, and model development. It might be worth looking over another issue. I might also come back to read the paper that Chowdhury and Messac were on, and possibly the one about robot design.

Research Papers
---------------

### Global Performance Index System for Kinematic Optimization of Robotic Mechanism

*Pu Zhang, Zhenqiang Yao and Zhengchun Du* J. Mech. Des. 136, 031001 (2013) (); doi:10.1115/1.4026031

Developing an objective function for robot design. The performance indices that go into this objective function all seem like things that are easy to calculate. (Hey, that robotics class is actually coming in handy for once!) So in this case, I'd think they should have just used an MOEA, because the function evaluation should be pretty cheap. (Although if it's more costly than I think, I could be wrong about that.)

### Searching Feasible Design Space by Solving Quantified Constraint Satisfaction Problems

*Jie Hu, Masoumeh Aminzadeh and Yan Wang* J. Mech. Des. 136, 031002 (2013) (); doi:10.1115/1.4026027

Here's another situation where I can't really understand why you wouldn't want to use an MOEA. You want a broad range of options from the feasible design space, and you're spending a lot of function evaluations to do it. Their whole goal being to produce a single objective function for optimization, wouldn't it make more sense to do exploration and exploitation at the same time?

### Market-System Design Optimization With Consider-Then-Choose Models

*W. Ross Morrow, Minhua Long and Erin F. MacDonald* J. Mech. Des. 136, 031003 (2014) (); doi:10.1115/1.4026094

I got all excited about the title, because I thought they were actually trying to optimize a market system. Instead, they're trying to optimize a design in the context of a market system.

### Characterizing Uncertainty Attributable to Surrogate Models

*Jie Zhang, Souma Chowdhury, Ali Mehmani and Achille Messac* J. Mech. Des. 136, 031004 (2014) (); doi:10.1115/1.4026150

Machine learning (SVM) to classify different parts of the design space. Applied to Kriging and adaptive hybrid functions, whatever those are. Using a suite of standard problems. Seeing things like this makes me think JMD might be an appropriate venue for the next paper. Instead of error, we could talk about formulation consequences and different parts of the design space. It might behoove us to have more metamodels, to stand with work like this. Although they would share the "lack of integer variables" shortcoming, so I'm not sure that's really needed.

### An Adaptive Response Surface Method Using Bayesian Metric and Model Bias Correction Function

*Lei Shi, Ren-Jye Yang and Ping Zhu* J. Mech. Des. 136, 031005 (2014) (); doi:10.1115/1.4026095

Gaussian process based model bias correction. Is this, perchance, anything like bias-aware EnKF? Adaptive response surface updating algorithm. Presumably optimization is involved because they talk about applying to a vehicle design problem.

### Evaluating the End of Maintenance Dates for Electronic Assemblies Composed of Obsolete Parts

*Anthony Konoza and Peter Sandborn* J. Mech. Des. 136, 031006 (2014) (); doi:10.1115/1.4026096

Interesting! You have a lot of electronic parts in service, and you want to keep as many in service as you can for as long as possible. You have a fixed pool of spares, and you can't buy more because they don't make them like that any more. You may be able to pull good chips from bad cards, too. They have a single objective, which is to maximize the system life-cycle. Naturally, I think they should consider tradeoffs with risk and cost, but still a very interesting problem to look at.

### Level Set-Based Topology Optimization of Hinge-Free Compliant Mechanisms Using a Two-Step Elastic Modeling Method

*Benliang Zhu, Xianmin Zhang and Sergej Fatikow* J. Mech. Des. 136, 031007 (2014) (); doi:10.1115/1.4026097

FT. A new optimization algorithm.

### Extensible-Link Kinematic Model for Characterizing and Optimizing Compliant Mechanism Motion

*Justin Beroz, Shorya Awtar and A. John Hart* J. Mech. Des. 136, 031008 (2014) (); doi:10.1115/1.4026269

Neat. Model development for compliant mechanisms. Not having rigid members makes everything harder to calculate, so this sounds like good work.

### Generalized Equations for Estimating Stress Concentration Factors of Various Notch Flexure Hinges

*Guimin Chen, Jialu Wang and Xiaoyuan Liu* J. Mech. Des. 136, 031009 (2014) (); doi:10.1115/1.4026265

Model development. Tractable equations based on, presumably, FE models? At any rate, I'm all for work like this that produces good approximations.

Technical Brief
---------------

### Some Important Issues on First-Order Reliability Analysis With Nonprobabilistic Convex Models

*C. Jiang, G. Y. Lu, X. Han and R. G. Bi* J. Mech. Des. 136, 034501 (2014) (); doi:10.1115/1.4026261

I'm not really clear on what this paper is doing. Some technical stuff with reliability analysis that I'm not familiar with.

### An Electromechanical Integrated Harmonic Piezodrive System

*Lizhong Xu and Huaiyong Li* J. Mech. Des. 136, 034502 (2014) (); doi:10.1115/1.4026262

A new design approach, with analysis.

### Kinematic Synthesis for Infinitesimally and Multiply Separated Positions Using Geometric Constraint Programming

*James P. Schmiedeler, Barrett C. Clark, Edward C. Kinzel and Gordon R. Pennock* J. Mech. Des. 136, 034503 (2014) (); doi:10.1115/1.4026152

I'm unlikely ever to be in a position to use graphical methods, but I think they're intriguing and valuable. A good geometrical construction is worth a thousand words.

Bibliography
============

Moore, Roxanne A. 2012. “Value-Based Global Optimization.” PhD thesis, Georgia Institute of Technology.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
