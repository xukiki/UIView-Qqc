Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "UIView-Qqc"
  s.version      = "1.0.20"
  s.summary      = "UIView-Qqc"
  s.homepage     = "https://github.com/xukiki/UIView-Qqc"
  s.source       = { :git => "https://github.com/xukiki/UIView-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["UIView-Qqc/*.{h,m}"]

end
