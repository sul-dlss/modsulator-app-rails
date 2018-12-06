version = File.read("VERSION").strip

Gem::Specification.new do |s|
  s.name        =  'modsulator'
  s.version     =  version
  s.summary     =  'Produces (Stanford) MODS XML from spreadsheets.'
  s.description =  'Tools and libraries for working with metadata spreadsheets and MODS.'
  s.authors     =  ['Tommy Ingulfsen', 'Justin Coyne']
  s.email       =  'jcoyne85@stanford.edu'
  s.files       =  Dir["{app,lib}/**/*", "config/{application,boot,environment}.rb", "Gemfile", "Rakefile", "README.md", "LICENSE"]
  s.test_files  =  Dir["spec/**/*"]
  s.homepage    =  'https://github.com/sul-dlss/modsulator-app-rails'
  s.license     =  'Apache-2.0'
  s.platform    =  Gem::Platform::RUBY
  s.executables << 'modsulator'

  s.add_dependency 'roo', '>= 2.7.1'
  s.add_dependency 'equivalent-xml', '>= 0.6.0'   # For ignoring_attr_values() with arguments
  s.add_dependency 'nokogiri', '~> 1.8'
  s.add_dependency 'activesupport', '~> 5.0'
  s.add_dependency 'stanford-mods-normalizer', '~> 0.1'
  s.add_dependency 'deprecation', '~> 0'
end
