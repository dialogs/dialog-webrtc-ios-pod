#!/bin/bash
set -ev

webrtc_version=27.08.2020-15-07
sha1_checksum=4872c361692d498a7768750726c1adf504660063
filename="WebRTC-${webrtc_version}.framework.zip"

echo "Fetching WebRTC(version ${webrtc_version}) archive"
curl -OL "https://dialog-ios-cdn.s3.eu-west-2.amazonaws.com/${filename}"
echo "${sha1_checksum}  ${filename}" | shasum -c
unzip -o -q $filename
rm $filename
