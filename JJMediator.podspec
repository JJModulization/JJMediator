Pod::Spec.new do |s|

  s.name         = "JJMediator"
  s.version      = "0.0.3"
  s.summary      = "JJMediator Module"

  s.homepage     = "https://github.com/JJModulization/JJMediator.git"

  s.license      = "MIT"

  s.author       = { "MrSuperJJ" => "" }

  s.source       = { :git => "https://github.com/JJModulization/JJMediator.git", :tag => "#{s.version}" }

  s.source_files = "JJMediator/JJMediator/*.{swift}"

  s.platform     = :ios, "8.0"
  s.module_name  = 'JJMediator'
  # s.dependency "JSONKit", "~> 1.4"

end
