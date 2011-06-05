#!/bin/sh

# Download the latest version of OpenSSL

URL=http://www.openssl.org/source/

tar=`curl -s "$URL"|grep -m 1 "openssl-[0-9]\.[0-9]\.[0-9].\.tar\.gz"|cut -d\" -f4`
curl -O "$URL/$tar"
