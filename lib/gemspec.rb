#!/usr/bin/env ruby
require File.expand_path('../photos.rb', __FILE__)
version = ::Refinery::Photos.version
raise "Could not get version so gemspec can not be built" if version.nil?
files = Dir.glob("**/*").flatten.reject do |file|
  file =~ /\.gem(spec)?$/
end

gemspec = <<EOF
Gem::Specification.new do |s|
  s.name              = %q{refinerycms-gallery}
  s.version           = %q{#{version}}
  s.description       = %q{A way to post new photos to RefineryCMS-driven website.}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %qA way to post new photos to RefineryCMS-driven website.}
  s.email             = %q{me@gabeanzelini.com}
  s.homepage          = %q{http://gabeanzelini.com}
  s.authors           = %w(Gabe Anzelini)
  s.require_paths     = %w(lib)

  s.add_dependency    'refinerycms', '~> 0.9.9'

  s.files             = [
    '#{files.join("',\n    '")}'
  ]
  #{"s.test_files        = [
    '#{Dir.glob("test/**/*.rb").join("',\n    '")}'
  ]" if File.directory?("test")}
end
EOF

File.open(File.expand_path("../../refinerycms-gallery.gemspec", __FILE__), 'w').puts(gemspec)
