Pod::Spec.new do |s|
s.name             = "Networking"
s.version          = "0.1.0"
s.summary          = "Networking API"

s.description      = "Networking API for Intive Discovery wirtten by Marco Maddalena"

s.homepage         = "https://github.com/marcomaddy1982/Networking"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = { "Marco Maddalena" => "marco.maddalena@intive.com" }
s.source           = { :git => "https://github.com/marcomaddy1982/Networking.git", :tag => "#{s.version}" }

s.ios.deployment_target = "10.0"
s.source_files = "Networking/**/*.{swift}"

end
