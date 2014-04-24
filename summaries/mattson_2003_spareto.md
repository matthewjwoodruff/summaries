Concept Selection Using s-Pareto Frontiers
==========================================

Cite (Christopher A. Mattson and Messac 2003).

They make a good distinction between design concepts and design alternatives. "A design concept is an idea that has evolved to the point thtat there is a parametric model that represenst the performance of the family of design alternatives that belong to that concept's definition. A design alternative is a specific design resulting from unique parameter values used in the parametric model of a concept." The process of arriving at the former is "conceptual design", while the process of arriving at the latter is "detailed design." He puts optimization in the role of optimizing design alternatives for a design concept. That makes sense, and in that framework the GAA problem is one of finding Pareto optimal design alternatives for the three-aircraft product family design concept. This paper, however, is talking about tradeoffs between design *concepts* rather than alternatives. And that's a crucial, interesting point.

Actually, while I like the concept / alternative distinction, I think they bleed into each other. In fact Figure 1 in this paper shows exactly that, a continuity between concept and alternative. This is something I think we see in the GAA problem. We're not radically changing the design concept, but at the same time we're modeling the aircraft at a very high level that gives us a lot of scope to change the design.

The normal constraint method would appear to work nicely for two-objective problems. (Christopher A Mattson, Mullur, and Messac 2004) discusses the n-objective version.

S-Pareto filter removes all *locally* Pareto-optimal solutions and keeps all *globally* Pareto optimal solutions. Is that local versus global distinction referring to intra- versus inter-concept optimality?

The discussion of decision-making is very good and relates quite closely to MOVA. I think I may have misunderstood the s-Pareto idea in the past. At least in this paper, as best as I can tell, it's simply the Pareto frontier across all design concepts. And the way it's discussed, it bears a much closer resemblance to how I talk about hypervolume than to what we're doing with epsilons.

Other s-Pareto Papers
=====================

The usage scenarios paper (Curtis, Hancock, and Mattson 2013) talks about formulation space exploration in an s-Pareto context.

An earlier conference paper, (Christopher A Mattson and Messac 2002), is very similar but adds uncertainty. A paper in EO (Christopher A Mattson, Mullur, and Messac 2004) emphasizes "smart" frontiers that have variable density, with the most points in the regions of greatest tradeoff. It uses Practically Insignificant Tradeoff (PIT) to eliminate extra points. This is very similar to *ɛ* dominance, except you're culling from what should already be an evenly-distributed set, as produced by the normal constraint method, rather than incorporating the filter into optimization. In fact, these two approaches are compatible: you could do PIT elimination of points after the fact, and it's entirely possible that it would cull more points even if you used the same *ɛ*s. There are two points in my *ɛ* figure that would be de-duplicated under the PIT criteria.

The bottom line for me is that the PIT filter makes more sense than *ɛ* dominance from a pure decision-making standpoint, because *ɛ* dominance can give you two points that are basically indistinguishable and PIT won't. Unfortunately, if you tried to apply PIT *during* optimization, you'd violate the diagonal-positive requirement by introducing an inconsistent dominance relation. I have an idea for harmonizing the methods:

1.  Choose *ɛ*s
2.  Optimize using boxes half as big in each dimension. (Could be expensive if your *ɛ*s are too small.)
3.  Apply the PIT filter to get a set of practically different solutions.

Bibliography
============

Curtis, Shane K, Braden J Hancock, and Christopher A Mattson. 2013. “Usage Scenarios for Design Space Exploration with a Dynamic Multiobjective Optimization Formulation.” *Research in Engineering Design* 24 (4): 395–409.

Mattson, Christopher A, and Achille Messac. 2002. “A Non-Deterministic Approach to Concept Selection Using S-Pareto Frontiers.” In *ASME 2002 International Design Engineering Technical Conferences and Computers and Information in Engineering Conference*, 859–870. American Society of Mechanical Engineers.

Mattson, Christopher A, Anoop A Mullur, and Achille Messac. 2004. “Smart Pareto Filter: Obtaining a Minimal Representation of Multiobjective Design Space.” *Engineering Optimization* 36 (6): 721–740.

Mattson, Christopher A., and Achille Messac. 2003. “Concept Selection Using S-Pareto Frontiers.” *AIAA Journal* 41 (6): 1190–1198.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
