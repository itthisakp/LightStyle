Pod::Spec.new do |s|
  s.name         = "LightStyleSDK"
  s.version      = "1.0.1"
  s.summary      = "Light Style SDK"
  s.homepage     = "https://github.com/itthisakp/LightStyle"
  s.license      = "Light Style"
  s.author             = "LightStyle"
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.7'
  s.source       = { :git => "https://github.com/itthisakp/LightStyle.git", :tag => "#{s.version}" }
  s.ios.vendored_frameworks  = "LightStyleSDK.xcframework"
  s.dependency "LightStyleSupportingSDK"

end
