Pod::Spec.new do |spec|

  spec.name         = "INProgressView"
  spec.version      = "1.0.2"
  spec.summary      = "Loading Indicator Framework in SwiftUI"
  spec.description  = "A simple, easy and custom iOS Loading Indicator written in SwiftUI"
  spec.homepage     = "https://github.com/invio-developer/INProgressView"

  spec.license      = "MIT"
  spec.author       = { "Mustafa Yesil" => "myesil@invio.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/invio-developer/INProgressView.git", :tag => "#{spec.version}" }


  spec.source_files  = "INProgressView/**/*.{swift}"

end
