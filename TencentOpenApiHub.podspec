#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |spec|
  spec.name             = 'TencentOpenApiHub'
  spec.version          = '1.0.0'
  spec.summary          = 'TencentOpenAPI for cocoapods'

  spec.homepage            = 'https://github.com/zhuxiaod/TencentOpenApiHub'
  spec.license          =   { :type => 'MIT', :file => 'LICENSE' }
  spec.author              = { 'zhuxiaod' => 'zhuxiaod_183202114@qq.com' }
  spec.source              = { :git => 'https://github.com/zhuxiaod/TencentOpenApiHub.git', :tag => spec.version.to_s }
  
  spec.platform = :ios
  spec.ios.deployment_target = '11.0'
  spec.static_framework = true
  spec.requires_arc = true

  spec.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
#  spec.libraries = 'iconv', 'sqlite3', 'c++', 'z'

  spec.vendored_frameworks = '*.framework'
  spec.source_files = 'TencentOpenAPI.framework/Headers/*'
  spec.resource = '*.bundle'
  
  

  #pod buildingSetting
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/TencentOpenAPI.framework/Headers/',
    'DEFINES_MODULE' => 'YES'
  }
  
  #修改taget设置
#  spec.user_target_xcconfig = {
#    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
#
#  }

end
