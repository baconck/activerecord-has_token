$:.push File.expand_path("../lib", __FILE__)

require "has_utoken/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "has_utoken"
  s.version     = HasUtoken::VERSION
  s.authors     = ["Chris Bacon"]
  s.email       = ["chris@crispybacon.io"]
  s.homepage      = "https://github.com/baconck/has_utoken"
  s.summary       = %q{Create tokens for your Ruby on Rails model}
  s.description   = %q{HasUToken provides unique tokens of any length for any model in ruby on rails.}
  
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord", [">= 6.0"]
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
