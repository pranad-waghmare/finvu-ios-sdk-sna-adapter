Pod::Spec.new do |s|
    s.name         = "FinvuSDKSNAAdapter"
    s.version      = "1.0.0"
    s.summary      = "SNA Adapter for FinvuSDK"
    s.description  = "Optional SNA (Silent Network Authentication) adapter for FinvuSDK"
    s.homepage     = "https://github.com/Cookiejar-technologies/finvu-ios-sdk-sna-adapter.git"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "Finvu" => "pranadw@cookiejar.co.in" }
    s.source       = { :git => "https://github.com/Cookiejar-technologies/finvu-ios-sdk-sna-adapter.git", :tag => "#{s.version}" }
    
    s.platform = :ios
    s.ios.deployment_target = '13.0'
    s.swift_version = "5.7"
    
    # Use vendored frameworks for distribution
    s.vendored_frameworks = "FinvuSDKSNAAdapter.xcframework",
                           "FinvuAuthenticationSDK.xcframework", 
                           "OtplessFinVu.xcframework"
    
    s.dependency 'FinvuSDK/Core'
    s.frameworks = 'Foundation', 'UIKit', 'CoreFoundation'
    s.libraries = 'c++', 'z'
  end