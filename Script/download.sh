#!/bin/bash
set -ev

webrtc_version=1.0
sha1_checksum=78c4a505487e6c23283e9784e3fb009bda260736

echo "fetching webrtc dist"
curl -OL https://cdn.dlg.im/ioswebrtc/WebRTC.framework.zip
echo "${sha1_checksum}  WebRTC.framework.zip" | shasum -c
unzip -o -q WebRTC.framework.zip
rm WebRTC.framework.zip
