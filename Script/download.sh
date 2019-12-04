#!/bin/bash
set -ev

webrtc_version=79.0.29507
sha1_checksum=68f25658e59977242b3e6f67e3c61e10fc8f7e6a

echo "Fetching WebRTC(version ${webrtc_version}) archive"
curl -OL https://cdn.dlg.im/ioswebrtc/m79/WebRTC.framework.zip
echo "${sha1_checksum}  WebRTC.framework.zip" | shasum -c
unzip -o -q WebRTC.framework.zip
rm WebRTC.framework.zip
