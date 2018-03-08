# -*- encoding: utf-8 -*-
# stub: chef-vault 3.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-vault".freeze
  s.version = "3.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thom May".freeze]
  s.date = "2017-08-29"
  s.description = "Data encryption support for Chef using data bags".freeze
  s.email = ["thom@chef.io".freeze]
  s.executables = ["chef-vault".freeze]
  s.files = ["bin/chef-vault".freeze]
  s.homepage = "https://github.com/chef/chef-vault".freeze
  s.licenses = ["Apache License, v2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Data encryption support for Chef using data bags".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<simplecov-console>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<chef>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_dependency(%q<aruba>.freeze, ["~> 0.6"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
      s.add_dependency(%q<simplecov-console>.freeze, ["~> 0.2"])
      s.add_dependency(%q<chef>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<aruba>.freeze, ["~> 0.6"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    s.add_dependency(%q<simplecov-console>.freeze, ["~> 0.2"])
    s.add_dependency(%q<chef>.freeze, [">= 0"])
  end
end
