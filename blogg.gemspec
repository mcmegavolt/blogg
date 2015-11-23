$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogg"
  s.version     = Blogg::VERSION
  s.authors     = ["Alexander Ponomarenko"]
  s.email       = ["mcmegavolt@gmail.com"]
  s.homepage    = "http://alexponomarenko.com"
  s.summary     = "Very simple blog for rails app"
  s.description = "Blogg is very simple blogging system for your rails application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'rails', '~> 3.2', '>= 3.2.0'

  s.add_development_dependency 'sqlite3', '~> 0'

end
