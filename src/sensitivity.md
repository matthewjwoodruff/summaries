# Global Sensitivity Analysis Without Structured Sampling

Most methods of global sensitivity analysis require what I'll call
*structured sampling*.
    This is a term I think I made up, although I may have appropriated
    it from somewhere.
    What I mean by it is that Method of Morris, FAST, and Sobol' all
    require that the model be sampled in a certain way --- you can't
    just feed samples in and get sensitivity indices out.
    This is a problem if your function evaluations are expensive.
    (I.e., you have an expensive model, or you are performing real
    physical experiments each time.)
    You are interested in getting global sensitivity indices, but you
    can't afford the sampling.

## RS-HDMR: High-Dimensional Model Representation

This idea is really simple.
    Make a surrogate model of your system by doing regression, fitting
    a spline, kriging, radial basis functions, or what have you.
    This surrogate is a *representation* of a *high-dimensional
    model*, based on *random sampling* (i.e., sampling not driven by
    the needs of global sensitivity analysis).
    Then do your global sensitivity analysis on the surrogate model.

[@alis_2001_rshdmr] discusses how to create the surrogate.
    [@li_2010_rshdmr] splits sensitivity indices in three parts: structural,
    correlative, and total.
    [@saltelli_2008_primer] mentions a similar method, cut-HDMR, that
    relies on structured sampling.
    [@forrester_2009_surrogate] has a very detailed discussion of surrogate
    modeling in optimization, much of which also applies to global sensitivity
    analysis.
    On a related note, Borg's search operator probabilities provide a basic
    indication of model structure without producing sensitivity indices for
    particular variables.

## Density Based Methods  

[@plischke_2013_density] present an alternative approach that
is not based on surrogate modeling.
    I don't fully understand it.
    It appears to work by partitioning each axis and
    comparing the output conditional to membership in that
    partition with the unconditional output.
    It requires kernel (Gaussian, boxed, or Epanechnikov) density
    approximation to produce this estimate.
    (And that sounds a lot like surrogate modeling to me.)
    This method produces first order importance measures.

# Bibliography
 





<!--
vim:ts=4:sw=4:expandtab:wrap lbr:ai
-->
