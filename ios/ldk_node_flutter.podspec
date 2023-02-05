#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ldk_node.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ldk_node_flutter'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'https://github.com/LtbLightning/Ldk-Node-Flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Bitcoin Zavior' => 'BitcoinZavior@GMail.Com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
   s.platform = :ios, '9'
         # Flutter.framework does not contain a i386 slice.
   s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.swift_version = '5.0'
    s.public_header_files = 'Classes**/*.h'
    s.source_files = 'Classes/**/*'
    s.static_framework = true
    s.vendored_libraries = "libnative.a"
end
