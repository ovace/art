#!/usr/bin/env bash
uid="$1"
#redir="$( curl --socks5 '127.0.0.1:9050' -I "https://graph.facebook.com/v2.6/$uid/picture?width=10000&height=10000" 2>/dev/null | \
  #perl -ne '/^Location: (.*)$/ && print "$1\n"' )"

#echo "$uid"
#echo "$redir"

if [ ! "$redir" = 'https://static.xx.fbcdn.net/rsrc.php/v2/yo/r/UlIqmHJn-SK.gif' ]; then
  curl --socks5 '127.0.0.1:9050' -L "https://graph.facebook.com/v2.6/$uid/picture?width=10000&height=10000" 2>'/dev/null' >"pics/$uid.jpeg"
  # TODO why does this fail? I get forbidden! But not on browser! User agent?
  #curl  "$redir" >"pics/$uid.jpeg"
fi

#echo
