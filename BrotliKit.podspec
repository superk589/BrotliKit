Pod::Spec.new do |s|
  s.name         = 'BrotliKit'
  s.version      = '1.0.0'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.summary      = 'A Swift and Objective-C category for Brotli compression.'
  s.homepage     = 'https://github.com/luckymarmot/BrotliKit'
  s.authors      = { 'Paw' => 'https://paw.cloud' }
  s.source       = { :git => 'https://github.com/luckymarmot/BrotliKit.git', :tag => s.version }
  s.documentation_url = 'https://github.com/luckymarmot/BrotliKit'

  s.ios.deployment_target  = '8.0'
  s.osx.deployment_target  = '10.8'
  s.requires_arc = true

  s.source_files = 'BrotliKit/*.{h,m,c}', 'Dependencies/brotli/c/common/*.c', 'Dependencies/brotli/c/dec/*.c', 'Dependencies/brotli/c/enc/*.c'
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/Dependencies/brotli/c/include"' }
end