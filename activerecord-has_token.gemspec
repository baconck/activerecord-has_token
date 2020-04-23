$:.push File.expand_path("../lib", __FILE__)

require "has_token/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activerecord-has_token"
  s.version     = HasToken::VERSION
  s.authors     = ["Chris Bacon"]
  s.email       = ["chris@crispybacon.io"]
  s.homepage      = "https://github.com/baconck/activerecord-has_token"
  s.summary       = %q{Unique token strings for your activerecord models}
  s.description   = %q{Unique token strings for your activerecord models}
  
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord", [">= 6.0"]
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
