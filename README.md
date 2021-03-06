Literature Summaries
====================

The markdown files in this repository are summaries of literature I've read. Mostly, these relate to optimization and decision-making. This includes multi-objective evolutionary algorithms (MOEAs), design optimization, and operations research.

Citing
======

I strongly encourage you to read the originals --- I make no guarantee that my notes are free of bias or omission. If you do use material from these summaries, please cite them. [tex.stackexchange.com](http://tex.stackexchange.com/questions/3587/how-can-i-use-bibtex-to-cite-a-web-page) has a good discussion of how to cite web pages. The following example may be used with BibTex. Be sure to fill in the date of access.

    @misc{woodruff_literature_summaries,
        title = {Literature Summaries},
        author = {Matthew Woodruff},
        howpublished = {https://github.com/matthewjwoodruff/summaries},
        note = {Accessed: yyyy-mm-dd}

Corrections
===========

If I've misunderstood a paper, please let me know by filing an issue through the issue tracker. (You may need to create a free GitHub account.)

Journal Scans
=============

These summarize recent issues of a journal.

-   [Structural and Multidisciplinary Optimization](summaries/smo.md)
-   [Journal of Mechanical Design](summaries/jmd.md)
-   [European Journal of Operational Research](summaries/ejor.md)
-   [Evolutionary Computation](summaries/ec.md)

Related Researchers
===================

I summarize papers that originate from the same group of people.

-   [University of Southamption](summaries/soton.md) surrogate modeling people. Some multi-objective optimization.
-   Papers published with [Christine Shoemaker](summares/shoemaker.md) in the last year or so seem to focus on two-phase surrogate optimization with RBF. I found no indication of multi-objective approaches.

Individual Articles
===================

These are summaries of individual articles.

[Barthelemy and Haftka, 1993](summaries/barthelemy_haftka_1993_approximation_concepts.md) : A review paper covering approximations in structural optimization.

[Bond et al, 2008](summaries/bond_2008_generating_objectives.md) : People are bad at expressing what it is they want, and they might not even know.

[Mattson and Messac, 2003](summaries/mattson_2003_spareto.md) : The s-Pareto frontier, very similar concept to *ɛ* dominance. Definitely worth a look, designed to address decision-making needs rather than optimization needs. Could be used together with *ɛ* dominance.

[Ormerod, 2014](summaries/ormerod_2014_rationalism.md) : Critical Rationalism, deriving from Popper's deductive rationalism, offers OR practitioners a way to say that their methods are rational and scientific.

[Saltelli, 2014](summaries/saltelli_2014_modelswrong.md) : Sensitivity auditing. Systematic approach to looking for the agenda behind a model.

[Wu and Azarm, 2001](summaries/azarm_2001_metrics.md) : Multi-objective optimization metrics for engineering design. Valuable for its context in time (2001) and place (JMD). Chapter 5 of (Coello Coello, Van Veldhuizen, and Lamont 2007) is pretty definitive if you just want to know about metrics.

[Zavala et al., 2014](summaries/zavala_2014_moea.md) : A review spanning 1993-2013, of MOEAs used in structural optimization. *Spoiler alert*: NSGAII gets used the most.

Citations Source
================

I've put some of the citations in a [BibTeX database](src/bibliography.bib).

Bibliography
============

Coello Coello, Carlos A, David A Van Veldhuizen, and Gary B Lamont. 2007. *Evolutionary Algorithms for Solving Multi-Objective Problems, Second Edition*. Kluwer Academic Publishers.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
