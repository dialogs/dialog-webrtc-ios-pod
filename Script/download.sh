#!/bin/bash
set -ev

webrtc_version=27.08.2020-15-07
sha1_checksum=4872c361692d498a7768750726c1adf504660063

echo "Fetching WebRTC(version ${webrtc_version}) archive"
curl -OL https://dialog-ios-cdn.s3.eu-west-2.amazonaws.com/WebRTC-27.08.2020-15-07.framework.zip
echo "${sha1_checksum}  WebRTC.framework.zip" | shasum -c
unzip -o -q WebRTC.framework.zip
rm WebRTC-27.08.2020-15-07.framework.zip
