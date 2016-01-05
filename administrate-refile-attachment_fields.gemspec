$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "attachment_fields/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "administrate-refile-attachment_fields"
  s.version     = Administrate::Refile::AttachmentFields::VERSION
  s.authors     = ["Logan Serman"]
  s.email       = ["logan.serman@metova.com"]
  s.homepage    = "https://github.com/administrate-refile-attachment_fields"
  s.summary     = "Custom Administrate fields for Refile attachments"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "administrate"
  s.add_dependency "refile"

  s.add_development_dependency "combustion", "~> 0.5.3"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
end
