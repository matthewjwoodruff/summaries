# Evolutionary Computation

*Matthew Woodruff*

*February 20, 2014*

# Note

This is just the opposite of EJOR.
    Six articles per issue, published quarterly, each article is 30-40 pages.
    (Although the forgiving font size and one column format give the text a lot of breathing room.)
    Although, it is like EJOR in its glacial turnaround.
    Two to three years from receipt of manuscript to publication.
    Eleven months from acceptance to publication.
    What do we gain from having these conversations at such a slow pace?

# Summary

I'm sadly unimpressed with EC.
    Definitely the high point in this issue is the article about designing robot brains with memristors.
    Maybe I've been overexposed to the EA field, so the work in other areas looks comparatively better, but the optimization papers in this issue did not excite me.
    The PSO paper just did not make its case convincingly, and it smacks of me-too-ism.
    The job shop one just made me mad because it's trying to support a terrible way to run a factory, and not even doing a very realistic job of it.
    The one optimization paper I was OK with used self-organizing maps to visualize population dynamics.
    I'm all for new visualizations, so that one gets a pass with me.
    Anyway, this issue left me with little hope that EC has particularly relevant lit for me to cite.

# Volume 22, Issue 1 (1 March, 2014)

## A Scalable Memetic Algorithm for Simultaneous Instance and Feature Selection
 *Nicolás García-Pedrajas, Aida de Haro-García and Javier Pérez-Rodríguez*
 *Page 1*

An interesting problem --- you have *so much data* that your machine learning algorithm breaks down.
    So you actually have to figure out how to use less of it.
    They invent a new memetic approach and compare it to SVM across 40 problems.

## D$^2$MOPSO: MOPSO Based on Decomposition and Dominance with Archiving Using Crowding Distance in Objective and Solution Spaces
 *N. Al Moubayed, A. Petrovski and J. McCall*
 *Page 47*

Color me skeptical.
    A new and improved MOPSO that uses crowding and decomposition.
    Crowding is known to set you up for deterioration, while decomposition doesn't scale well in the number of objectives.
    What I don't get is why $\varepsilon$ dominance would even show up in their lit review if they're going to use crowding.
    And they show their new algorithm is better based on two and three objective test problems?
    I suppose small objective count is necessary if you're going to use crowding and decomposition, and test problems are necessary if you're not going to use epsilons.

This is a quarterly journal with a small number of papers.
    It could stand to have even fewer.

## Evolving Spiking Networks with Variable Resistive Memories
 *Gerard Howard, Larry Bull, Ben de Lacy Costello, Ella Gale and Andrew Adamatzky*
 *Page 79*

Robot brains made of memristors!  Now that's more like it.


## Genetic Programming for Evolving Due-Date Assignment Models in Job Shop Environments
 *Su Nguyen, Mengjie Zhang, Mark Johnston and Kay Chen Tan*
 *Page 105*

Hmm.  An OR application.
    Due date scheduling for job shops is probably a bad idea.
    If you don't have unique jobs, then setting due dates kills your throughput.
    If you do have unique jobs, and you're overcommitted, due date policies just make all of your jobs late.
    If you do have unique jobs, and you're not overcommitted, due date policies make you run inefficiently.

Anyway, that's my opinion, not the paper.
    They want to use GP to establish due dates, not really touching the scheduling policy per se.
    Their job shop model is non-reentrant, though, and that's an assumption you make when your methods can't handle the hard problems.
    Reentrant multiclass queueing networks are a fact of life in real-world manufacturing.


## Filtering Sensory Information with XCSF: Improving Learning Robustness and Robot Arm Control Performance
 *Jan Kneissler, Patrick O. Stalph, Jan Drugowitsch and Martin V. Butz*
 *Page 139*

Better control using knowledge of forward kinematics derived from a classifier system, compensate for noisy sensors.
    Kalman filtering to improve robustness to noise.
    Maybe it's because I don't know as much about the fields, but I'm finding the classifier-system and robot papers way better than the straight up optimization papers.


## A Model for Analysing the Collective Dynamic Behaviour and Characterising the Exploitation of Population-Based Algorithms
 *Mikdam Turkey and Riccardo Poli*
 *Page 159*

Self-organizing maps.
    A new way to visualize population dynamics during search.
    The EAs they analyze aren't the most exciting, but this paper is worth it for introducing a new way to look at population dynamics.

# Bibliography

<!--
vim:ts=4:sw=4:expandtab:wrap lbr:ai
-->
