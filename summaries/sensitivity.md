Global Sensitivity Analysis Without Structured Sampling
=======================================================

Most methods of global sensitivity analysis require what I'll call *structured sampling*. This is a term I think I made up, although I may have appropriated it from somewhere. What I mean by it is that Method of Morris, FAST, and Sobol' all require that the model be sampled in a certain way --- you can't just feed samples in and get sensitivity indices out. This is a problem if your function evaluations are expensive. (I.e., you have an expensive model, or you are performing real physical experiments each time.) You are interested in getting global sensitivity indices, but you can't afford the sampling.

RS-HDMR: High-Dimensional Model Representation
----------------------------------------------

This idea is really simple. Make a surrogate model of your system by doing regression, fitting a spline, kriging, radial basis functions, or what have you. This surrogate is a *representation* of a *high-dimensional model*, based on *random sampling* (i.e., sampling not driven by the needs of global sensitivity analysis). Then do your global sensitivity analysis on the surrogate model.

(F. and Rabitz 2001) discusses how to create the surrogate. [@ (Saltelli et al. 2008) mentions a similar method, cut-HDMR, that relies on structured sampling.

Density Based Methods
---------------------

Plitsche

Bibliography
============

F., Alis Ömer, and Herschel Rabitz. 2001. “Efficient Implementation of High Dimensional Model Representations.” *Journal of Mathematical Chemistry* 29 (2).

Saltelli, Andrea, Marco Ratto, Terry Andres, Francesca Campolongo, Jessica Cariboni, Debora Gatelli, Michaela Saisana, and Stefano Tarantola. 2008. *Global Sensitivity Analysis: The Primer*. West Sussex, England: Wiley.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
