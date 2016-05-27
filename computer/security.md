# Security

http://phuctor.nosuchlabs.com/phuctored broken RSA keys through factoring with other keys

## General concepts

-   <http://en.wikipedia.org/wiki/Exploit_%28computer_security%29>

    Exploit: the actual code that makes use of the vulnerability.

    It is possible that a vulnerability exists, but no on has exploited it in practice and it is not clear if it is possible to do so or not.

    Still, it is known similar situations have been exploited, and that exploits that were believed not to be possible sometimes become so.

### Zero day attack

<http://en.wikipedia.org/wiki/Zero-day_attack>

Attack that exploits an yet unknown vulnerability to the public, e.g. Heartbleed.

There are companies and consultants who specialize in finding such bugs to sell them to government spies, like ReVuln <http://revuln.com/>

Cool disclaimers on who they claim to sell for: <http://grahamcluley.com/2013/07/zero-day-ios-exploit/>

How to sell zero day exploits lists:

-   Vendors: most vendors don't pay, only have a measly hall of fame.

    Vendors may consider it extortion if you ask them for money: <http://security.stackexchange.com/questions/13760/found-huge-bug-what-should-i-do?lq=1>. Likely because they think their software is so perfect and that no-one should touch it.

    Of course, those companies are silly, and will eventually get hacked and pay a much greater cost, so many smart companies like Google and Facebook have a bounty program.

-   Bug programs like ZDI. Do pay, but not a lot.

-   Governments. You need to have contact with a trusted broker. Pay the most.

-   Organizations with bad reputation: pay more than programs, less than the government, but governments may consider that illegal, and you may get involved with criminal organizations.

Legality: in most countries, it is legal to find and sell exploits, but not to use them (unless you're the government and make the laws).

In Germany it seems that it has recently become illegal to even find exploits.

**ONLY SEND ENCRYPTED EMAILS TO THE VULN BUYERS**, otherwise they may disqualify your submission.

#### Buyer lists

-   <http://www.bugsheet.com>: collection of vendor bounty programs indicating which pay or not, and pointing to the rules.

-   <http://security.stackexchange.com/questions/4086/which-companies-facilitate-payment-in-return-for-vulnerability-disclosure>

-   <http://www.darkreading.com/vulnerabilities-and-threats/so-you-want-to-be-a-zero-day-exploit-millionaire/d/d-id/1101256?>

-   <http://www.forbes.com/sites/andygreenberg/2012/03/23/shopping-for-zero-days-an-price-list-for-hackers-secret-software-exploits/>

    Price list to governments based on deals done by middleman Grugq.

-   Interesting general marked analysis: <http://www.ekoparty.org/archive/2009/Mostrame_la_guita_.pdf>

#### ZDI

ZDI: <http://www.zerodayinitiative.com/>.

The FAQ: <http://www.zerodayinitiative.com/about/faq/>

Always discloses to the maintainers. TODO: how does it make money for them? Seems that they use it to protect themselves, and may sell the information to other vendors after they fix for themselves but before public disclosure.

Linked to HP.

Pays more than vendors?

<http://www.reddit.com/r/ReverseEngineering/comments/1ewaqz/how_much_does_zdi_pay/>

Simple and specialized procedures.

#### Notable sellers

##### VUPEN

<http://www.vupen.com>

Interesting to see how they offer 3 levels of services:

- 1 day vulnerability defense.
- 0 day vulnerability defense.
- 0 day vulnerability offense. The real deal.

### Security clearance

Some employers may require that you already have a level of clearance to hire you:

- <http://en.wikipedia.org/wiki/List_of_U.S._security_clearance_terms>
- <https://answers.yahoo.com/question/index?qid=20090708061407AAOqBCt>

---

-   <http://en.wikipedia.org/wiki/Backdoor_%28computing%29>

-   <http://en.wikipedia.org/wiki/Social_engineering_%28security%29> and
    <http://en.wikipedia.org/wiki/Physical_information_security>

    Less elegant / surefire types of attacks, but that are used, including by the NSA.

    Usually forbidden by bounty programs like GitHub's: <https://bounty.github.com/#rules>

-   <http://en.wikipedia.org/wiki/Timing_attack>

    Also used on non-cryptographic attacks to discover hidden information.

    The GitHub security program does not award prizes for such attacks.

-   <http://en.wikipedia.org/wiki/Drive-by_download>

-   <http://en.wikipedia.org/wiki/Honeypot_%28computing%29>

    Hacker trap.

## Vulnerabilities

This section also related exploits and counter measures.

-   <http://en.wikipedia.org/wiki/Address_space_layout_randomization>

-   <http://en.wikipedia.org/wiki/Website_defacement>

    Nice comparison to graffiti.

-   <http://en.wikipedia.org/wiki/Multi-factor_authentication>

    Uses multiple types of authentication amongst:

    - knowledge factors: something the user knows. Password.
    - possession factors: something the user has. Key, credit card, private RSA pair.
    - inheritance factors: something only the user can have. Biometrics and behavior metrics like signature.

    In software computing systems, the most common type if 2 factor authentication (2FA) with knowledge and possession factors of password and private key pair.

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

### Arbitrary code execution

### Remote code execution

<http://en.wikipedia.org/wiki/Arbitrary_code_execution>

The most destructive, and thus desirable for researchers, vulnerability.

With that, given enough execution privileges, you can steal all data, including passwords through key loggers.

### Path transversal

<https://www.owasp.org/index.php/Path_Traversal>

<http://cwe.mitre.org/data/definitions/22.html>: Improper Limitation of a Pathname to a Restricted Directory.

Subsets: <http://cwe.mitre.org/data/definitions/59.html> with symlinks. In particular affects Git based systems
e.g., GitHub Page's defense: <https://help.github.com/articles/page-build-failed-symlink-does-not-exist-within-your-site-s-repository/>

### Web

HTML, CSS and JavaScript related vulnerabilities:

#### Man in the middle

Way to beat SSL. If you intercept the requests made by the client, you can send him your public key and make him believe that it is the server response.

You can then forward his request to the server, you acting as proxy, and send replies back transparently, or arbitrarily altering data.

Certificates exist on the TLS system exactly to prevent this kind of attack.

<http://blog.philippheckel.com/2013/07/01/how-to-use-mitmproxy-to-read-and-modify-https-traffic-of-your-phone/>

##### https://en.wikipedia.org/wiki/ZRTP

Way to prevent man in the middle for VoIP.

You speak a part of key over the main connection before saying anything important.

It would require perfect voice synthesis / recognition to get around, and if you make a small chat before it, full AI most likely.

#### XSS

-   <http://stackoverflow.com/a/26819187/895245>

-   Login form CSRF: <http://stackoverflow.com/questions/6412813/do-login-forms-need-tokens-against-csrf-attacks>

-   <https://www.owasp.org/index.php/XSS_%28Cross_Site_Scripting%29_Prevention_Cheat_Sheet>

-   Master XSS evasion cheatsheet: <https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet#Tests>

##### Self-XSS

<http://en.wikipedia.org/wiki/Self-XSS> The type of XSS where you must social engineer the user to click a link to self attack.

TODO: what other kinds of XSS are possible?

### XML

-   <http://en.wikipedia.org/wiki/Billion_laughs>

    Infinite loop memory CPU DoS. Similar to the Zip bomb, fork bomb or the famous LaTeX `\def~{~}~`.

-   <https://docs.python.org/2/library/xml.html>

    List of vulnerabilities and which Python parsers are vulnerable to each

### ZIP

-   <http://en.wikipedia.org/wiki/Zip_bomb>

### Unrestricted file upload

- <https://www.owasp.org/index.php/Unrestricted_File_Upload>

Known implementations:

-   GitHub releases: <https://github.com/cirosantilli/test/releases/tag/3.0> and raw.
-   Dropbox

Known attacks:

-   MIME Type Sniffing Mismatch: <https://capec.mitre.org/data/definitions/209.html> is a common vulnerability in this case.

-   Image vulnerabilities: <http://security.stackexchange.com/questions/8587/how-can-i-be-protected-from-pictures-vulnerabilities> GIFAR, EXIF

Prevention:

- TODO is `Content-Type: text/plain` or `application/octet-stream` enough?
- TODO is `Content-Disposition: attachment` enough?

Beware of: <https://capec.mitre.org/data/definitions/209.html>. `X-Content-Type-Options: nosniff` may help with that.

#### GIFAR

- <http://en.wikipedia.org/wiki/Gifar>

### Information leakage

<http://cwe.mitre.org/data/definitions/717.html>

<https://www.owasp.org/index.php/Information_Leakage>

Used for getting useful server information to prepare for further attacks later on.

### Stack buffer overflow

<http://en.wikipedia.org/wiki/Stack_buffer_overflow>

### Denial of service

- <http://en.wikipedia.org/wiki/Black_fax> Even fax had it!

### Heap spray

<https://en.wikipedia.org/wiki/Heap_spraying>

### JIT spray

<https://en.wikipedia.org/wiki/JIT_spraying>

## Tools

- <http://www.metasploit.com/>

### USB attacks

-   <https://github.com/samyk/usbdriveby>

    <http://techcrunch.com/2014/12/18/this-little-usb-necklace-hacks-your-computer-in-no-time-flat/>

## Trivia

-   <https://en.wikipedia.org/wiki/Phreaking>

    Phone hacking to make free calls.

    <https://en.wikipedia.org/wiki/Blue_box>

    Woz and Mitnick started like that.

-   <https://en.wikipedia.org/wiki/Garbage_picking>

-   <https://en.wikipedia.org/wiki/IDN_homograph_attack>

-   DOX <http://www.urbandictionary.com/define.php?term=dox>

### Famous attacks

### Notable attacks

This section also discusses famous attackers, or security researchers.

-   <https://en.wikipedia.org/wiki/Operation_Aurora>

-   <http://en.wikipedia.org/wiki/Morris_worm>

    One of the earliest.

    And the guy later funded Y combinator.

-   <http://en.wikipedia.org/wiki/PlayStation_Network_outage>

    Data theft of 77M users during 2 days. Sony then shut down the network for 3 weeks.

-   <http://en.wikipedia.org/wiki/George_Hotz>

    He disclosed high profile exploits for AT&T and PS3, and got sued. He found and exploited Google Chrome vulnerabilities on 

-   <http://en.wikipedia.org/wiki/Samy_KamkarI> made a few.

-   <http://en.wikipedia.org/wiki/Stuxnet> Attacks controllers, reportedly used by the USA to destroy nuclear centrifuges in Iran.

-   <https://en.wikipedia.org/wiki/Siberian_pipeline_sabotage>

### Kevin Mitnick

Black hat turned white consultant.

He is *very* charismatic, and seems a bit narcisistic. I ask myself how much he is a psycopath.

Live social engineering: <https://www.youtube.com/watch?v=DB6ywr9fngU>

Famous hacker to consultant: <https://en.wikipedia.org/wiki/Kevin_Mitnick>

Long interview: <https://www.youtube.com/watch?v=Q7G3kKRdUl4>

## Side channel attack

- <https://en.wikipedia.org/wiki/Side-channel_attack>

- L3 cache based: <http://securityaffairs.co/wordpress/36178/hacking/spy-in-the-sandbox-attack.html>

- Rowhammer DRAM based: <http://www.v3.co.uk/v3-uk/analysis/2399431/manufacturers-ignored-possibility-of-rowhammer-dram-attacks>

## Misc

Someone said:

> Black hat hackers will dig deeper than unpaid white hat hackers.

Security models:

- <http://en.wikipedia.org/wiki/Bell%E2%80%93LaPadula_model>

<https://en.wikipedia.org/wiki/Kerckhoffs%27s_principle>

Don't roll your own cryptosystem: <http://security.stackexchange.com/questions/25585/is-my-developers-home-brew-password-security-right-or-wrong-and-why>

Targeted vs opportunistic attacks: <http://blog.quatrashield.com/2013/05/30/cyber-attack-targeted-or-opportunistic/> <https://en.wikipedia.org/wiki/Crime_of_opportunity>

## Bibliography

-   <https://github.com/enaqx/awesome-pentest>

-   <http://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures>

    Public vulnerability database.

    Data viewer frontend: <http://www.cvedetails.com/>

    Types: <http://www.cvedetails.com/vulnerabilities-by-types.php>

-   <http://en.wikipedia.org/wiki/CVSS>

    Common Vulnerability Scoring System, used by CVE.

    Very interesting to see the different impact aspects of vulnerabilities.

-   <http://cwe.mitre.org/data/index.html>

    CWE: Common Weakness Enumeration.

-   <https://www.owasp.org>

    Amazing wikis with tons of vulnerabilities and their counter measures.

    <https://www.owasp.org/index.php/Top10#OWASP_Top_10_for_2013> The top ten is a good place to start.

-   <https://bounty.github.com/index.html>

    GitHub's security page. Some interesting info there, like: <https://github.com/joernchen/evil_stuff>

-   <http://opensecuritytraining.info/Training.html>

### Security product features

-   <https://www.leviathansecurity.com/lotan/>

### Security job postings

Job postings on the domain will useful techniques.

-   <https://www.exodusintel.com/careers.html>

    - Pathname Traversal and Equivalence Errors
    - Insufficient Verification of Data Authenticity
    - Improper Restriction of Operations within the Bounds of a Memory Buffer
    - Incorrect Type Conversion or Cast
    - Pointer Issues
    - Improper Initialization
    - ...and so on

    They use Metasploit.

### Tutorials

-   <http://googleprojectzero.blogspot.fr/2014/08/the-poisoned-nul-byte-2014-edition.html>

    Amazingly detailed description of a hard exploit of a vulnerability.

    Cool to learn the names of general techniques.

-   Assembly vulnerabilities exploit game: https://microcorruption.com/

-   <http://securityzap.com/a-story-of-a-finfisher-hacker/>

## Nuclear weapons via hacking

- <https://www.quora.com/Could-a-group-of-hackers-break-into-military-networks-and-launch-or-detonate-nuclear-missiles>
