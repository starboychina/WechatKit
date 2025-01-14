Pod::Spec.new do |s|
  s.name             = "WechatKit"
  s.version          = "1.8.6.2"
  s.summary          = "一款快速实现微信第三方登录的框架 SDK1.8.6.2"
  s.homepage         = "https://github.com/Xinguang/WechatKit"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Xinguang" => "wechatkit.github.com@kansea.com" }
  s.source           = { :git => "https://github.com/Xinguang/WechatKit.git", :tag => s.version.to_s }
  s.documentation_url = 'http://Xinguang.github.io/WechatKit/index.html'
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'SDKExport/*.h',  'WechatKit/*.h',  'WechatKit/*.swift'
  s.vendored_libraries  = 'SDKExport/libWeChatSDK.a'
  s.public_header_files = 'WechatKit/*.h', 'SDKExport/*.h'

  s.frameworks = 'Security', 'UIKit', 'CoreGraphics', 'WebKit'
  s.libraries = 'z', 'c++', 'sqlite3.0'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
end
