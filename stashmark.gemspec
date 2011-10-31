# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','stashmark','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'stashmark'
  s.version = Stashmark::VERSION
  s.author = 'Michael Wall'
  s.email = 'mjwall@gmail.com'
  s.homepage = 'https://github.com/mjwall/stashmark'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A personal bookmark manager'
# Add your other files here if you make them
  s.files = %w(
bin/stashmark
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','stashmark.rdoc']
  s.rdoc_options << '--title' << 'stashmark' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'stashmark'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
end
