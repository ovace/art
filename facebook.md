# Facebook

1.49B monthly active users 2015!

## Hashtags

They also have it, like Twitter.

https://www.facebook.com/hashtag/google

## Photos

URLs of type: <https://www.facebook.com/photo.php?fbid=503891429630209>

### Profile picture

<http://stackoverflow.com/questions/2821061/facebook-api-how-do-i-get-a-facebook-users-profile-image-through-the-facebook>

<https://graph.facebook.com/v2.6/100000280705283/picture?width=10000&height=10000>

## ID

ID: every user has a public known id.

Site to find it: http://findmyfbid.com/

Mine: 100000280705283

https://facebook.com/100000280705283 redirects to your home page with your nice username: https://facebook.com/cirosantilli

Googling it shows that when you move cities that is publicly known: https://www.facebook.com/100000280705283/posts/925197894166225/

Is is also shared on help forums: https://help.instagram.com/help/community/profile/?uid=100000280705283

## Crawling

## Scrapping

Illegal: <https://petewarden.com/2010/04/05/how-i-got-sued-by-facebook/>

As of 2016, <https://www.facebook.com/robots.txt> has been updated to say:

> Notice: Crawling Facebook is prohibited unless you have express written
> permission. See: http://www.facebook.com/apps/site_scraping_tos_terms.php

<https://www.facebook.com/apps/site_scraping_tos_terms.php> says that you can't scrape without permission, and if you are allowed, you can't sell scraped data, and Facebook can request you to drop it at any time.

Also you can't use Tor: only given IPs can be used.

Tor browser seems to work just fine however.

The form seems to be accepted automatically / easily however?

Using the mobile site is a much easier to scrape: <https://m.facebook.com> HTML way simpler, and has pagination instead of AJAX bottom of page loading.

Dump friend's pictures: <https://github.com/sahildua2305/fb-profile-picture-dump>

### Tools

<https://github.com/hikaruAi/FacebookBot>

### Get list of all UIDs

Stopped being sequential at some point, could not find the list. And sharing it is likely illegal:

<https://www.quora.com/What-is-the-best-way-to-get-a-list-of-Facebook-users-who-have-public-profiles>

### Crawl friend graph

<http://stackoverflow.com/questions/2022929/facebook-crawler>

Basically impossible because by default people only show friend lists to friends: <https://www.facebook.com/help/115450405225661>

TODO: does not seem possible without their permission on the API? Even though it is visible on the web?

TODO: it is not possible to see all friends of someone who is not your friend?

### 2010 torrent UID dump

A major data torrent dump as done in 2010. Looks like it was legal at the time, before the policy was clarified? The file `facebook-urls.txt.bz2` alone contains 170M UIDs, and all I've tested worked. <http://www.pcworld.com/article/202126/100M_Facebook_Profiles_Now_Available_For_Download.html> <https://blog.skullsecurity.org/2010/return-of-the-facebook-snatchers> generated from scrapping <https://www.facebook.com/directory> The creator even made it clear who he is: <https://blog.skullsecurity.org/2010/return-of-the-facebook-snatchers>, ex Symantec employee.

Things to do on it:

    cat facebook-urls.txt | sed 's|http://en-us.facebook.com/people/[^/]*/||' >ids.txt
    sort ids.txt >ids-sort.txt
    # Remove a few invalid which are invalid for some reason, only about 20 were removed.
    cat ids-sort.txt | grep -Ev -e '[^0-9]' -e '^$' >ids-clean.txt

What you can do with it then:

Idea of magnitudes: for 1000 profile pictures:

- 10 seconds
- 25% are the empty placeholder
- 60M of disk after placeholder removal
- max pic size: 700k

1000 pics: 22% placeholder, 586M disk, largest 1M

Behind Tor:

- 100 pics, 4 threads: 1.5 min.
- 1000 pics, 10 threads: 6.0 min
- 10000 pics, 20 threads: 34.0 min
- 100000 pics, 100 threads: 34.0 min

Face extraction:

1000 pics (minus placeholders):

- 613 pics had faces
- 9.2M disk cropped
- 8 minutes sequential

## API

Most requests require an access token.

TODO How to get the token?

### Most useful

Friend list:

    curl https://graph.facebook.com/v2.6/100000280705283/friends?access_token="$TOKEN"

## URL scheme

profile with ID: <https://www.facebook.com/profile.php?id=100000280705283>

## Account creation

May require cell phone for less known email providers.

## Content guideline

<https://www.theguardian.com/technology/2015/mar/16/facebook-policy-nudity-hate-speech-standards>

No hard porn, hate speech, terrorism and crime.
