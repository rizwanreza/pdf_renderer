$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pdf_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pdf_renderer"
  s.version     = PdfRenderer::VERSION
  s.authors     = ["Rizwan Reza"]
  s.email       = ["rizwanreza@gmail.com"]
  s.summary     = "Adds PDF renderer to ActionController"
  s.description = ""

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.4"
  s.add_dependency "prawn", "~> 0.12.0"

  s.add_development_dependency "sqlite3"
end
