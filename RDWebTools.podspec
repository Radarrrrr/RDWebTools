Pod::Spec.new do |s|

  s.name         = "RDWebTools"
  s.version      = "1.0.0"
  s.summary      = "WebView and WebViewController based on WKWebView"
  s.homepage     = "https://github.com/Radarrrrr/RDWebTools"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Radar" => "imryd@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Radarrrrr/RDWebTools.git", :tag => "1.0.0" }
  s.source_files  = "RDWebTools/*"
  s.requires_arc = true

end