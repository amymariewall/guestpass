$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "guestpass/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "guestpass"
  s.version     = Guestpass::VERSION
  s.authors     = ["Amy Wall"]
  s.email       = ["amymariewall@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Guestpass."
  s.description = "TODO: Description of Guestpass."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
