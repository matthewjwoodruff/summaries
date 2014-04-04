# A survey of multi-objective metaheuristics applied to structural optimization

Cite [@zavala_2014_moea]

In the title and again in the first sentence of the abstract, they
specifically call out structural optimization problems, so I guess
they really mean it.
    But it seems like that's mainly a justification for publishing a
    review of MOEAs in SMO.
    Not that that's a bad thing, you need some kind of justification
    and SMO's a pretty good venue.

There are a number of infelicities in the language --- again not
something I hold agaist the authors, but the reviewers should have
done their job and suggested line edits.
    The goal of this paper is a review of MO metaheuristics *and
    structural applications*.
    So I suppose I need to take back what I said.
    This is actually a structural optimization paper too, at least by
    intention.

I wonder if it's hard for Coello's co-authors to write a section
introducing multiobjective optimization, including definitions for
Pareto dominance and Pareto optimality, when it's all been done so
thoroughly in his book already.

The imprecision of this statement is problematic: "in general, it
    does not make sense to search for a huge number of Pareto optimal
    solutions, since normally a reasonably low number of solutions is
    enough."
    Not that I disagree, but "huge" and "reasonably low" are somewhat
    in the eye of the beholder.
    If you want a compromise point for every conflict, that could be
    quite a lot of solutions, depending on how many objectives you
    have.

I suppose it's necessary to go over the basics for a paper like this,
and maybe it's just my immersion in the subject matter making me
impatient, but spending a whole page defining convergence and
diversity seems redundant.
    Coello's book has a great treatment of that, just like it does a
    great job defining Pareto optimality and nondomination.

The survey covers MOEAs, ACO, scatter search, SA, and PSO.
    All are population-based search algorithms.
    NSGAII, SPEAII, MOEA/D, MOEAD/DE, DE, PSO, ACO, Tabu Search (TS).
    Encoding: binary versus real.
    My thoughts on encoding are that there's absolutely no point in
    binary-encoding a real-valued problem, because combinatorial
    problems are way harder than continuous ones.

They list a variety of standard structural optimization problems, and
tabulate the studies based on them.
    NSGAII is the most widely used, and DE has not been tried.
    They call for parallelism, surrogate modeling, and the
    incorporation of user preferences.

# Bibliography

<!--
vim:ts=4:sw=4:expandtab:wrap lbr
-->
