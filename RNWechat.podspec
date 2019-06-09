require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNWechat"
  s.version      = "0.0.1"
  s.summary      = "none"
  s.license      = "MIT"

  s.authors      = "k"
  s.homepage     = "x"
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'

  s.source       = { :git => "./", :tag => "#{s.version}" }
  s.source_files  = "ios/**/*.{h,m,a}"

  s.libraries       = 'z','resolv'
  s.vendored_libraries = "ios/*.a"

  s.dependency 'React'
end
