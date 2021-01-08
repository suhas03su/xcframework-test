Pod::Spec.new do |spec|
  spec.name         = 'MyWebViewFramework'
  spec.version      = '1.0'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/suhas03su/xcframework-test.git'
  spec.authors      = { 'Suhas' => 'suhas.03su@gmail.com' }
  spec.summary      = 'MyWebViewFramework Test'
  spec.source       = { :git => 'https://github.com/suhas03su/xcframework-test.git', :tag => spec.version }
  spec.swift_version = '5.0'
  spec.platform	   = :ios, "10.0"
  spec.source_files = 'MyWebViewFramework/*.{h,m}'
end