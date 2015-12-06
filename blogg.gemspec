$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogg"
  s.version     = Blogg::VERSION
  s.authors     = ["Alexander Ponomarenko"]
  s.email       = ["mcmegavolt@gmail.com"]
  s.homepage    = "https://github.com/mcmegavolt/blogg"
  s.summary     = "Design ready SEO optimized customizable blog engine"
  s.description = "Design ready SEO optimized customizable blog engine for your rails application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency "rails", "~> 3.2", ">= 3.2.13"
  s.add_dependency "jquery-rails"
  s.add_dependency "devise"
  s.add_dependency "cancancan", "~> 1.10"
  s.add_dependency "inherited_resources"
  s.add_dependency "responders"
  s.add_dependency "haml"
  s.add_dependency "font-awesome-rails"
  s.add_dependency "carrierwave"
  s.add_dependency "friendly_id", "~> 4.0.10"
  s.add_dependency "babosa"
  s.add_dependency "redcarpet"
  s.add_dependency "rouge"
  s.add_dependency "meta-tags"

  s.add_development_dependency "sqlite3", "~> 0"
end
