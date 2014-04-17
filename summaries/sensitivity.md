Global Sensitivity Analysis Without Structured Sampling
=======================================================

Most methods of global sensitivity analysis require what I'll call *structured sampling*. This is a term I think I made up, although I may have appropriated it from somewhere. What I mean by it is that Method of Morris, FAST, and Sobol' all require that the model be sampled in a certain way --- you can't just feed samples in and get sensitivity indices out. This is a problem if your function evaluations are expensive. (I.e., you have an expensive model, or you are performing real physical experiments each time.) You are interested in getting global sensitivity indices, but you can't afford the sampling.

RS-HDMR: High-Dimensional Model Representation
----------------------------------------------

This idea is really simple. Make a surrogate model of your system by doing regression, fitting a spline, kriging, radial basis functions, or what have you. This surrogate is a *representation* of a *high-dimensional model*, based on *random sampling* (i.e., sampling not driven by the needs of global sensitivity analysis). Then do your global sensitivity analysis on the surrogate model.

(F. and Rabitz 2001) discusses how to create the surrogate. (Li et al. 2010) splits sensitivity indices in three parts: structural, correlative, and total. (Saltelli et al. 2008) mentions a similar method, cut-HDMR, that relies on structured sampling. (Forrester and Keane 2009) has a very detailed discussion of surrogate modeling in optimization, much of which also applies to global sensitivity analysis. On a related note, Borg's search operator probabilities provide a basic indication of model structure without producing sensitivity indices for particular variables.

Density Based Methods
---------------------

(Plischke, Borgonovo, and Smith 2013) present an alternative approach that is not based on surrogate modeling. I don't fully understand it. It appears to work by partitioning each axis and comparing the output conditional to membership in that partition with the unconditional output. It requires kernel (Gaussian, boxed, or Epanechnikov) density approximation to produce this estimate. (And that sounds a lot like surrogate modeling to me.) This method produces first order importance measures.

Bibliography
============

F., Alis Ömer, and Herschel Rabitz. 2001. “Efficient Implementation of High Dimensional Model Representations.” *Journal of Mathematical Chemistry* 29 (2).

Forrester, Alexander IJ, and Andy J Keane. 2009. “Recent Advances in Surrogate-Based Optimization.” *Progress in Aerospace Sciences* 45 (1): 50–79.

Li, Genyuan, Herschel Rabitz, Paul E. Yelvington, Oluwayemisi O. Oluwole, Fred Bacon, Charles Kolb, and Jacqueline Shoendorf. 2010. “Global Sensitivity Analysis for Systems with Independent and/or Correlated Inputs.” *Journal of Physical Chemistry* 114 (19).

Plischke, Elmar, Emanuele Borgonovo, and Curtis L. Smith. 2013. “Global Sensitivity Measures from Given Data.” *European Journal of Operational Research* 226: 536–550.

Saltelli, Andrea, Marco Ratto, Terry Andres, Francesca Campolongo, Jessica Cariboni, Debora Gatelli, Michaela Saisana, and Stefano Tarantola. 2008. *Global Sensitivity Analysis: The Primer*. West Sussex, England: Wiley.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
