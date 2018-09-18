$:.push File.expand_path("../lib", __FILE__)

require "raynet/version"

Gem::Specification.new do |s|
  s.name               = "raynet"
  s.version            = Raynet::VERSION
  s.default_executable = "raynet"
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.0'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Richard Lapiš"]
  s.date = %q{2018-09-18}
  s.description = %q{raynet.cz application REST API gem}
  s.email = %q{richard.lapis@gmail.com}
  s.files = `git ls-files`.split("\n")
  s.test_files = []
  s.homepage = %q{https://github.com/richardrails/raynet}
  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{raynet.cz application REST API gem}
  s.license = 'MIT'
  s.add_runtime_dependency("rest-client", ">= 1.7.3")

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end