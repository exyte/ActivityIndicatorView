Pod::Spec.new do |s|
  s.name             = "ActivityIndicatorView"
  s.version          = "0.0.6"
  s.summary          = "A number of preset loading indicators created with SwiftUI."

  s.homepage         = 'https://github.com/exyte/ActivityIndicatorView.git'
  s.license          = 'MIT'
  s.author           = { 'exyte' => 'info@exyte.com' }
  s.source           = { :git => 'https://github.com/exyte/ActivityIndicatorView.git', :tag => s.version.to_s }
  s.social_media_url = 'http://exyte.com'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  
  s.requires_arc     = true
  s.swift_version    = '5.2'

  s.source_files = [
     'Source/*.h',
     'Source/*.swift',
     'Source/**/*.swift'
  ]
end
