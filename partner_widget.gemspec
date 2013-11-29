$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "partner_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "partner_widget"
  s.version     = PartnerWidget::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PartnerWidget."
  s.description = "TODO: Description of PartnerWidget."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "haml"

  s.add_development_dependency "sqlite3"
  
end
