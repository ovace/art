# Statistics

-   Wilson score interval http://www.evanmiller.org/how-not-to-sort-by-average-rating.html

    Application: a web app has items, and each item has upvotes and downvotes. How to sort the best items?

    Advantage over (upvotes / total) votes: takes into account the total number of upvotes and downvotes.

    If there are too few upvotes / downvotes, the score is lower.

    If every item had the same number of total votes, the average would be a fine comparison.

    Model: every vote (up or down) is a Bernoulli experiment with probability `p` of success.

    If the entire human population had voted, `p` would be the ratio.

    But we are taking samples, and we are comparing certainty.

    If we knew page views instead of upvotes, the absence of an upvote could be a downvote.

    The simplest approach is the Wald test. It just uses the normal distribution approximation to the binomial. This is pertinent because the sampling distribution of the mean of Bernoulli trials is binomial.

    We take the lowest range because we are estimating all values which are likely to be larger than it.

    TODO: how is it derived?

-   http://www.evanmiller.org/ab-testing/poisson-means.html#!20/1;25/1@95

    Does the rate of arrival differ across two time periods?

    TODO maths. Seems like Poisson

-   https://en.wikipedia.org/wiki/Fieller's_theorem

    Confidence interval of the ratio of two observations.

    http://arxiv.org/pdf/0710.2024.pdf

-   Galton board.

    <https://en.wikipedia.org/wiki/Bean_machine>

    Physical demonstration of the binomial distribution.

    Physical simulation: <https://www.youtube.com/watch?v=3m4bxse2JEQ>

-   https://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient

    Measures how linear is the relation between two variables. +1 perfect linear increasing, -1 decreasing.

-   https://en.wikipedia.org/wiki/Kendall_rank_correlation_coefficient

-   https://en.wikipedia.org/wiki/Spearman's_rank_correlation_coefficient

-   https://en.wikipedia.org/wiki/Nonparametric_statistics

    - https://en.wikipedia.org/wiki/Descriptive_statistics
    - https://en.wikipedia.org/wiki/Statistical_inference

-   https://en.wikipedia.org/wiki/Principal_component_analysis

-   https://en.wikipedia.org/wiki/P-value

-   Types of statistics:

    - https://en.wikipedia.org/wiki/Bayesian_inference
    - https://en.wikipedia.org/wiki/Frequentist_inference
    - https://en.wikipedia.org/wiki/Fiducial_inference

    Bayesian vs frequentist:

    - https://xkcd.com/1132/
    - http://stats.stackexchange.com/questions/22/bayesian-and-frequentist-reasoning-in-plain-english
    - https://www.quora.com/What-is-the-difference-between-Bayesian-and-frequentist-statisticians

Markov chain:

-   <https://en.wikipedia.org/wiki/Viterbi_algorithm>

## Misc

-   <https://en.wikipedia.org/wiki/Stein's_example>

## Student T test

<https://en.wikipedia.org/wiki/Student%27s_t-test>

Test if a factor significantly changes a value.

E.g.: does a medication significantly change blood pressure?

TODO: quantify by how much?
