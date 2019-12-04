Pod::Spec.new do |s|
  s.name         = "DialogWebRTC"
  s.version      = "79.0.29507"
  s.summary      = "Dialog's WebRTC SDK for iOS"
  s.description  = <<-DESC
    WebRTC is a free, open project that provides browsers and mobile
    applications with Real-Time Communications (RTC) capabilities via simple
    APIs.
  DESC

  s.homepage     = "http://webrtc.org/"
  s.license      = "BSD"
  s.author       = "Google Inc."
  s.source       = { :git => "https://b.maslakov@bitbucket.transmit.im/scm/dlg/dialog-webrtc-ios-pod.git", :tag => s.version }

  s.platform     = :ios, "10.0"

  s.vendored_frameworks = "WebRTC.framework"

  s.prepare_command = <<-CMD
  Script/download.sh
  CMD

end
