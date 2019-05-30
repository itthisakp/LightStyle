Pod::Spec.new do |s|
  s.name         = "LightStyleSDK"
  s.version      = "1.0.0-Beta-3"
  s.summary      = "Light Style SDK"
  s.homepage     = "https://github.com/itthisakp/LightStyle"
  s.license      = "Light Style"
  s.author             = "LightStyle"
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source       = { :git => "https://github.com/itthisakp/LightStyle.git", :tag => "#{s.version}" }
  s.ios.vendored_frameworks  = "LightStyleSDK.framework"
  s.dependency "LightStyleSupportingSDK"

end
