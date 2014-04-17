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
    [@
    [@saltelli_2008_primer] mentions a similar method, cut-HDMR, that
    relies on structured sampling.

## Density Based Methods  

Plitsche

# Bibliography
 





<!--
vim:ts=4:sw=4:expandtab:wrap lbr:ai
-->
