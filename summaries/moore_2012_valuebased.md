Value-Based Global Optimization
===============================

Cite (Moore 2012).

Introduction
============

According to the intro, the main interesting thing that VGO does is incorporate the cost of design simulation in the optimization process itself. I'm skeptical of utility functions, for the reasons that I outlined in the MOVA paper. I suppose the argument in favor is that some models are so expensive that you just can't afford enough runs even to make a metamodel that lets you do a tradeoff. But I'm skeptical about that argument. In practice, are there ever really systems about which we can make no predictions except with a very expensive model? I.e., until you start making a metamodel, you can't say anything at all without making a very expensive model run. This is suspicious to me. If the super-high fidelity model makes predictions that its users have no way to validate (rules of thumb, simpler models, etc.) other than building the system, the users are in the terribly precarious position of having to trust a very expensive model.

Reading further, this does not seem to be what Moore is advocating anyway. She makes a very good case for models at multiple levels of accuracy, based on a useful conceptual distinction between accuracy and fidelity. I particularly like this quote, "A very accurate assessment of a bad solution’s inadequacy is a waste of computational resources." I'm still bothered by the inclusion of utility functions, so I'm going to have to read on.

The primary research question is how to do design optimization that produces high quality results at a reasonable computational expense. (My answer for this would be the MEME, but the difference between Moore and me is that she's actually implemented something.)

Here's where the utility functions come in: VGO takes a decision-based design perspective. Moore cites Von Neumann and Morgenstern, as well as MAUT. Mathematical soundness is a particularly important consideration. Everything can be measured in dollars if you take this approach. She mentions EAs for conceptual level work, and then points out that optimization under uncertainty is extremely expensive. I think this is a bit of a non sequitur, though. If we're talking about using cheaper models, well, you can use them for global multi-objective optimization too, right? I suppose what I'm getting hung up on is the idea that having a utility function would ever be helpful. Or at least that a utility function is *anything* more than a mathematical contrivance aimed at making a solution locally a little bit better, when you don't even really care what attribute you're improving because you're already in a part of the space that you like. *Or*, a utility function is a mathematical contrivance that lets a bunch of designers agree on a particular design to move forward with. In that case you're at the point where you could punch the numbers into a pocket calculator, because you've got so few design candidates under consideration. Anyway, when you have cheap models, why bother with utility functions? It seems like you should either make the case that you need utility functions because the model is too expensive, or you need lower-accuracy models because the model is too expensive. I'm not sold on the need for both.

This connects to the point about the expense of optimization versus the cost of engineering time and the cost of prototyping. Engineering time just keeps getting more expensive, because people. Optimization just keeps getting cheaper, because computer time is becoming a commodity, like I say in the intro to my new paper. Prototyping you could argue is getting cheaper, with additive manufacturing and CNC machines giving you approximate phyiscal realizations pretty fast. But I'd say prototyping is getting cheaper at a linear rate, while optimization is getting exponentially cheaper. And engineering time is still the most expensive of all, so to me it makes sense, if you're a big company designing an expensive complex system, to invest heavily in computing resources because they're still cheaper than people. Consider the situation where you have a bunch of engineers in a meeting room arguing about what to do next, based on inadequate data. If you can spend \$1000 on computer time, and you can save ten engineers two hours of time arguing, you're probably coming out ahead. Also, because you *can't* measure everything in dollars, presumably they'll come up with a better design given more data.

Chapter 3, VGO
==============

Moore addresses the point that measuring everything in dollars is limiting by saying that, for a business, profit is all there is. I'm glad she put this so starkly, because this is an important misconception that has to be taken head-on. Let's accept for the moment that profit really is the only important thing to a buisness, that management has no social agenda, interest in conservation, desire to make the world a better place, or any other motivation that cannot be measured in dollars. Profit maximization *still* has huge conceptual difficulties. Every conversion between something else and dollars is attended by new uncertainties. For instance, the cost of materials cannot be assumed to be constant, and for a design that may be produced for years or even decades, the cost of its materials in the future is an unknown. The same may be said for labor, transportation, machining, et cetera. Now even if we wave way those uncertainties, we still have uncertain market conditions, demand for the product, competing products, changes in the regulatory environment, et cetera. In addition, there's some confusion about *when* we want to realize the profit. Now? In ten years? You can resolve that by applying a discount rate, but then you've made another assumption that's subject to uncertainty. In short, converting everything to dollars not only ignores any other possible business objectives, it ignores a great deal of uncertainty in the conversion.

This discussion is personally important to me because I used to think this way myself back before I ran into multi-objective optimization or read Arrow or Franssen.

Bibliography
============

Moore, Roxanne A. 2012. “Value-based Global Optimization.” PhD thesis, Georgia Institute of Technology.

License
=======

[![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
