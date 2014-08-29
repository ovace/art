General tips on how to become a good programmer.

First read [how to learn](how-to-learn.md): those techniques apply to any field of knowledge.

# Standards

When you star learning something, immediately star trying to understand its standards:

- download the documentation, learn where to find all its versions online.
    Try to understand it as early as possible while you go through tutorials.

- download the most famous style guides if applicable.
    They are often from big companies. Many technologies offer multiple ways to do things.
    Learn from the start which one is the best in general.  Also great way to learn new features.
    E.g.: [Google](http://google-styleguide.googlecode.com/), [GitHub](https://github.com/styleguide),
    [Thoughbot.inc](https://github.com/thoughtbot/guides).

# Write assertion cheatsheets

Whenever possible, write tutorials in code and assert automatically wherever possible.

Good:

    assert(1 + 1 == 2);

Bad:

    printf("%d", 1 + 1);

# Linux

Use Linux.

Its free.

There are many more open source projects for it that you can contribute to.

Learn about POSIX: <https://github.com/cirosantilli/linux/tree/master/posix>

# Command line

Learn to do everything from the command line (Bash).

# Self advertising

Make a web page containing:

- a list of you open source contribs: <http://www.cirosantilli.com/contrib/>
- a self evaluation of your knowledge: <http://www.cirosantilli.com/self-evaluation/>

Always search accounts / blogs of who makes software you like:
they are potential teammates or supporters.

## Consistent public image

Use the same photo, username and header image on *every* account.

Link to your web page from every account that allows it.

Get a domain name based on your name, e.g. `cirosantilli.com`.

## Stackoverflow

Use it.

## GitHub

Use it.

Upload every line of code or text you write.

## Twitter

For certain fields, specially web development, use it to find other people who work on the same domain of you.

## Open source

Find applications that interest you and improve programs.

# Backups

Do them periodically (Dejadup) on material you generated (not large things you downloaded).

Use a dedicated home partition.

Use a dotfiles on GitHub.

# Double browser technique

Use two browsers: one main, logged into your accounts, on secondary,
to understand how websites work from the point of view of other people.

# Design patterns

Learn from the Zen of Python <http://legacy.python.org/dev/peps/pep-0020/>.
The following resonate on my mind every week:

-   Flat is better than nested.

-   There should be one, and preferably only one, obvious way to do it,
    although that way may not be obvious at first unless you're Dutch (Python's creator is Dutch).
    Ruby disagrees:

        if not true

        unless true

-   Explicit is better than implicit.
