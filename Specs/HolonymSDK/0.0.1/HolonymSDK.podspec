Pod::Spec.new do |spec|

  spec.name         = "HolonymSDK"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of HolonymSDK."
  spec.description  = "Honolnym v1 created from rust. UNIFFI was used to convert from rust to Swift."
  spec.homepage     = "https://github.com/amosel/holonym-rust"
  spec.license      = "MIT"
  spec.author             = { "Amos Elmaliah" => "amosel@gmail.com" }
  spec.platforms    = { :ios => "13.0" }
  spec.platform     = :ios, "5.0"
  spec.source       = { :git => "git@github.com:amosel/specs.git" }
  spec.ios.vendored_library = '*.a'
  spec.source_files = ['holonym.swift', 'holonymFFI.h']

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end
