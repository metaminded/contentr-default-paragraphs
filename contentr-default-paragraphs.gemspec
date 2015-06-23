$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contentr-default-paragraphs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contentr-default-paragraphs"
  s.version     = ContentrDefaultParagraphs::VERSION
  s.authors     = ["Philipp Hirsch"]
  s.email       = ["itself@hanspolo.net"]
  s.homepage    = "https://github.com/metaminded/contentr-default-paragraphs"
  s.summary     = "Generic paragraphs for contentr"
  s.description = "Contentr (https://github.com/metaminded/contentr) is a gem that provides some CMS stuff. This gem adds some paragraphs, that are reuseable snippets to create content."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
