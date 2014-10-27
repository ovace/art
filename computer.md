-   Splat is a name for asterisk.

    Probably etymology: when a bug hits the car's window, it sounds like "splat",
    and the bug then looks like an asterisk.

-   Some dev put on his blog's tag line:

    > "Be conservative in what you send, be liberal in what you accept. -- RFC-XXX"

    When I noticed that he was paraphrasing Confucius, it blew my mind:

    > "A Gentleman Is Strict with Himself and Tolerant of Others."

    RFCs contain ancient Chinese wisdom.

-   Facebook `index.php` and `search.php` code leaked by hacker who stole it: <http://techcrunch.com/2007/08/11/facebook-source-code-leaked/>

    The code: <https://gist.github.com/nikcub/3833406>

-   <http://www.reuters.com/article/2011/07/02/us-dealtalk-nortel-google-idUSTRE76104L20110702>

    Google used several mathematical constants on a Norton bid, in particular:

    - <https://en.wikipedia.org/wiki/Brun's_theorem>
    - <https://en.wikipedia.org/wiki/Meissel%E2%80%93Mertens_constant>

-   Comparison between programming languages and cars. There are several:

    <http://users.cms.caltech.edu/~mvanier/hacking/rants/cars.html>

-   Historic commits:

    -   <https://github.com/MrMEEE/bumblebee-Old-and-abbandoned/commit/a047be85247755cdbe0acce6f1dafc8beb84f2ac>

        Fixed bug that removed the `/usr` directory on install on a large project...

    -   <https://github.com/jimweirich/wyriki/commit/d28fac7f18aeacb00d8ad3460a0a5a901617c2d4>

        GitHub added a special banner on the last commit of an influential Ruby programmer before he died on he same day of a heart attack.

-   <http://mrdoob.com/#/147/google_space> super cool 2D physical simulation

-   <http://en.wikipedia.org/wiki/Michael_Widenius> The creator of MySQL loves naming projects after his children! Another Finnish powerhouse.

-   "Atwood's Law" (SO): any application that can be written in JavaScript will eventually be written in JavaScript.

-   <http://darkpatterns.org/>

    Malicious web design patterns made to make people buy stuff they don't want.

-   Git 2.1 new dates formats: `--date="midnight the 12th of october, anno domini 1979"` or `--date=teatime`.

-   <http://en.wikipedia.org/wiki/Cyclomatic_complexity>

-   <http://www.gnu.org/software/texinfo>

    The program and language used to generate the `info` manuals, official GNU doc tool.

    Initially coded by Stallman. Today, feels like it is only relevant as part of the GNU cult / dream, while `man` has dominated.

    It compiles natively to both HTML and PDF, but not `man`. In general, information on `info` manuals are great and filled with examples, unlike `man` manuals which are much more formal.

-   <http://en.wikipedia.org/wiki/Typographic_ligature>

-   <http://en.wikipedia.org/wiki/Plaintext>

    Cryptography term for the unencrypted message being sent.

-   <http://en.wikipedia.org/wiki/Flat_UI_Design>

-   <http://en.wikipedia.org/wiki/Dash>

    Obscure typographical characters: the en dash and the em dash.

    Both have HTML entities: `&ndash` and `&mdash`.

-   <http://techcrunch.com/gallery/yo-has-spawned-an-army-of-clones>

    Hodor being my favorite.

-   Tweets in Chinese can contain way more information since they are limited to 140 *Chinese* characters,
    and most Chinese words are 1 or 2 characters long!

-   LLVM compiles C, C++, etc. to a standard object code, somewhat like Java does,
    but the object code is meant to go through compilation after optimization.

-   Technical debt: when you implement fast but something without taking precautions like testing.

    This generates a cost for the future,
    which later you will have to pay in the form of bugs.

-   <http://en.wikipedia.org/wiki/Plaintext>

    Cryptography term for the unencrypted message being sent.

-   <http://en.wikipedia.org/wiki/Flat_UI_Design>

-   <http://en.wikipedia.org/wiki/Multi-factor_authentication>

    Uses multiple types of authentication amongst:

    - knowledge factors: something the user knows. Password.
    - possession factors: something the user has. Key, credit card, private RSA pair.
    - inheritance factors: something only the user can have. Biometrics and behavior metrics like signature.

    In software computing systems, the most common type if 2 factor authentication (2FA)
    with knowledge and possession factors of password and private key pair.

-   Aspen Movie Map <https://www.youtube.com/watch?v=Hf6LkqgXPMU>

    Early Google Maps predecessor.

-   Very interesting IBM electro-mechanical typing machine mechanism: <https://en.wikipedia.org/wiki/IBM_Selectric_typewriter>

    Introduced in the 60's dominated the American market.

    Advantage: the entire font is contained in a single mechanical piece. Easy to change, harder to break.

    Found it on the film <https://en.wikipedia.org/wiki/Z_%28film%29>

# Stack overflow

-   <http://meta.stackexchange.com/questions/17204/six-simple-tips-to-get-stack-overflow-reputation-fast>

    - good formatting
    - niches

-   <http://stackoverflow.com/a/1732454/895245> Bobince's famous poetic
    answer on it is not possible to parse HTML with regex.

# Security

## General concepts

-   <http://en.wikipedia.org/wiki/Exploit_%28computer_security%29>

    Exploit: the actual code that makes use of the vulnerability.

    It is possible that a vulnerability exists, but no on has exploited it in practice and it is not clear if it is possible to do so or not.

    Still, it is known similar situations have been exploited, and that exploits that were believed not to be possible sometimes become so.

-   <http://en.wikipedia.org/wiki/Zero-day_attack>

    Attack that exploits an yet unknown vulnerability to the public,
    e.g. Heartbleed.

    There are companies and consultants who specialize in finding such bugs
    to sell them to government spies, like ReVuln <http://revuln.com/>

    Cool disclaimers on who they claim to sell for:
    <http://grahamcluley.com/2013/07/zero-day-ios-exploit/>

-   <http://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures>

    Public vulnerability database.

    Data viewer frontend: <http://www.cvedetails.com/>

-   <http://en.wikipedia.org/wiki/Backdoor_%28computing%29>

## Common vulnerabilities

This section also related exploits and counter measures.

-   <http://en.wikipedia.org/wiki/Address_space_layout_randomization>

-   <http://en.wikipedia.org/wiki/Website_defacement>

    Nice comparison to graffiti.

-   <http://en.wikipedia.org/wiki/Multi-factor_authentication>

    Uses multiple types of authentication amongst:

    - knowledge factors: something the user knows. Password.
    - possession factors: something the user has. Key, credit card, private RSA pair.
    - inheritance factors: something only the user can have. Biometrics and behavior metrics like signature.

    In software computing systems, the most common type if 2 factor authentication (2FA)
    with knowledge and possession factors of password and private key pair.

-   <http://en.wikipedia.org/wiki/Fork_bomb>

    Famous and simple DoS attack.

    Famous sh obfuscation: `:(){:|:&};:`

-   <http://en.wikipedia.org/wiki/Logic_bomb>

    Attack that goes off when certain criteria are met, typically a time.

    Fun list of cases on the Wikipedia page.

-   <http://en.wikipedia.org/wiki/Keystroke_logging>

    Get passwords once you install a program.

-   Hash collisions: <http://en.wikipedia.org/wiki/Collision_%28computer_science%29>

    Name of the attack: <http://en.wikipedia.org/wiki/Preimage_attack>

    Birthday attack: an specific technique: <http://en.wikipedia.org/wiki/Birthday_attack>

### XML

-   <http://en.wikipedia.org/wiki/Billion_laughs>

    Infinite loop memory CPU DoS. Similar to the Zip bomb, fork bomb or the famous LaTeX `\def~{~}~`.

-   <https://docs.python.org/2/library/xml.html>

    List of vulnerabilities and which Python parsers are vulnerable to each

### ZIP

-   <http://en.wikipedia.org/wiki/Zip_bomb>

## Famous attacks

This section also discusses famous attackers, or security researchers.

-   <http://en.wikipedia.org/wiki/PlayStation_Network_outage>

    Data theft of 77M users during 2 days. Sony then shut down the network for 3 weeks.

-   <http://en.wikipedia.org/wiki/George_Hotz>

    He disclosed high profile exploits for AT&T and PS3, and got sued. He found and exploited Google Chrome vulnerabilities on 

## Tutorials

-   <http://googleprojectzero.blogspot.fr/2014/08/the-poisoned-nul-byte-2014-edition.html>

    Amazingly detailed description of a hard exploit of a vulnerability.

    Cool to learn the names of general techniques.

# Hacker culture

-   <http://en.wikipedia.org/wiki/Script_kiddie>

-   Black hat, white hack, gray hat: <http://en.wikipedia.org/wiki/Hacker_%28computer_security%29#White_hat>

## People

-   Larry Ellison on CNN Fortune: <https://www.youtube.com/watch?v=1cYy-b7qfCE>

# Strategy

-   <http://en.wikipedia.org/wiki/Fear,_uncertainty_and_doubt>

    Also used by IBM previously.

-   <http://en.wikipedia.org/wiki/Vaporware>

-   <http://en.wikipedia.org/wiki/Halloween_documents>

    1998 documents that show that Microsoft internally officially:

    - respected open source internally at least in 1998.
    - proposed FUD and <http://en.wikipedia.org/wiki/Embrace,_extend_and_extinguish> usage

# Design

I'm not a design person, but sometimes I'm surprised.

-   <https://design.ubuntu.com/brand> Ubuntu brand guidelines.

# Funny

-   <http://c2.com/cgi/wiki?HaHaOnlySerious>

    Hacker denomination of the "many a true word is spoken in jest" idea.

-   <http://en.wikipedia.org/wiki/User_error#Acronyms_and_other_names>

    `PEBCAK`, `ID-10-T`

-   <http://askubuntu.com/questions/12336/easter-eggs-in-ubuntu>

    Also comment: Chuck Norris can do it.

-   <http://www.mit.edu/~xela/tao.html> more programming + Zen / Tao.

-   <http://builtwith.com>, <http://isitrails.com>

-   Program that will execute only once: <http://codegolf.stackexchange.com/a/28685/20603>

-   <http://en.wikipedia.org/wiki/Halt_and_Catch_Fire>

-   <http://en.wikipedia.org/wiki/Pentium_F00F_bug>

-   Vigil language: <https://github.com/munificent/vigil>

-   [Computer humor category at Wikipedia](https://en.wikipedia.org/wiki/Category:Computer_humor).

-   <https://en.wikipedia.org/wiki/Hacker_koan>

    Vim Arabesque: http://blog.sanctum.geek.nz/vim-koans/

    > A novice was trying to fix a broken Lisp machine by turning the power off and on.
    > Knight, seeing what the student was doing, spoke sternly: “You cannot fix a machine by just power-cycling it with no understanding of what is going wrong.”
    > Knight turned the machine off and on.
    > The machine worked.

-   [COMEFROM](https://en.wikipedia.org/wiki/COMEFROM)

-   <https://en.wikipedia.org/wiki/The_Book_of_Mozilla>

-   [Perl poetry](http://www.perlmonks.org/?node=Perl%20Poetry). That entire website is funny actually.

-   [Fork Bomb](http://en.wikipedia.org/wiki/Fork_bomb) Type of DoS attack.

-   [Any key](http://en.wikipedia.org/wiki/Any_key)

-   "Do you pine for the nice days of Minix-1.1, when men were men and wrote their own device drivers?" Linus Torvalds

-   [Spaghetti code](http://en.wikipedia.org/wiki/Spaghetti_code)

-   [Esoteric language](http://en.wikipedia.org/wiki/Esoteric_programming_language)

-   [Sockpuppet](http://en.wikipedia.org/wiki/Sockpuppet_%28Internet%29)

-   [Heisenbug](http://en.wikipedia.org/wiki/heisenbug)

-   [BMP C++ program](http://stackoverflow.com/a/5509538/895245)

-   [w3schools](https://chrome.google.com/webstore/detail/w3schools-hider/igiahejkpbnbnekdaefddmdceocmjpll). The site is considered so bad, but has such huge Google Rating, that a Google Chrome extension was created to block it from Google searches.

## Parody laws

-   [Godwin's Law](http://en.wikipedia.org/wiki/Godwin%27s_law)

    > As an online discussion grows longer, the probability of a comparison involving Nazis or Hitler approaches 1.

    Basically a manifestation of <http://en.wikipedia.org/wiki/Reductio_ad_Hitlerum> on the net.

-   ["Atwood's Law"](http://blog.codinghorror.com/the-principle-of-least-power/):

    > Any application that can be written in JavaScript, will eventually be written in JavaScript.

-   [Greenspun's tenth rule](http://en.wikipedia.org/wiki/Greenspun%27s_tenth_rule)

    > Any sufficiently complicated C or Fortran program contains an ad hoc,
    > informally-specified, bug-ridden, slow implementation of half of Common Lisp.

    The corollary is cool:

    > including Common Lisp

## Cheap

-   Unfortunate domain name concatenations:

    -   Who Represents:                  `whorepresents`

    -   Experts Exchange:                `expertsexchange`

    -   Pen Island:                      `penisland`

        This one even has a Uncyclopedia page: <http://uncyclopedia.wikia.com/wiki/Pen_Island>

    -   Therapist Finder:                `therapistfinder`

    -   Italian Power Generator Company: `powergenitalia`

    -   Mole Station Native Nursery:     `molestationnursery`

## Man pages

-   `i_suck_and_my_tests_are_order_dependent!()`: <http://ruby-doc.org/stdlib-2.1.0/libdoc/minitest/rdoc/MiniTest/Unit/TestCase.html#method-c-i_suck_and_my_tests_are_order_dependent-21>

In Vim:

    :help 42

## Joke software

This will also include funny smoke tests:

    sudo apt-get install oneko
    oneko

    sudo apt-get xeyes
    xeyes

    sudo apt-get install cmatrix
    cmatrix

    sudo apt-get install bb
    bb

###sl

For correcting people who change `ls` into `sl`.

    sudo apt-get install sl
    sl

Also see:

    man sl

###lolcat

Cat with diagonal rainbow colors:

    sudo apt-get install sl
    echo {a..z}{a..z}{a..z} | lolcat

## Easter eggs

Zen of Python:

    echo 'import this' | python

    firefox about:robots

    calendar
    calendar -f /usr/share/calendar/calendar.lotr -A 365

###Super Cow Powers

###apt-get moo

Try:

    apt-get moo

Then:

    aptitude moo

says:

    There are no Easter Eggs in this program.

Boring... but wait! Try this:

    aptitude -v moo
    aptitude -vv moo
    aptitude -vvv moo
    aptitude -vvvv moo
    aptitude -vvvvv moo
    aptitude -vvvvvv moo
