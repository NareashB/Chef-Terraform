# -*- encoding: utf-8 -*-
# stub: chef-api 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-api".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seth Vargo".freeze]
  s.date = "2018-03-02"
  s.description = "A tiny Chef API client with minimal dependencies".freeze
  s.email = ["sethvargo@gmail.com".freeze]
  s.homepage = "https://github.com/sethvargo/chef-api".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A Chef API client in Ruby".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<logify>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
    else
      s.add_dependency(%q<logify>.freeze, ["~> 0.1"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<logify>.freeze, ["~> 0.1"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
  end
end
