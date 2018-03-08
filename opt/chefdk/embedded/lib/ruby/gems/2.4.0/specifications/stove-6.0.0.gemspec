# -*- encoding: utf-8 -*-
# stub: stove 6.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stove".freeze
  s.version = "6.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seth Vargo".freeze]
  s.date = "2017-09-13"
  s.description = "A utility for releasing Chef community cookbooks".freeze
  s.email = ["sethvargo@gmail.com".freeze]
  s.executables = ["stove".freeze]
  s.files = ["bin/stove".freeze]
  s.homepage = "https://github.com/sethvargo/stove".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A command-line utility for releasing Chef community cookbooks".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-api>.freeze, ["~> 0.5"])
      s.add_runtime_dependency(%q<logify>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<community-zero>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-command>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<chef-api>.freeze, ["~> 0.5"])
      s.add_dependency(%q<logify>.freeze, ["~> 0.2"])
      s.add_dependency(%q<aruba>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<community-zero>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-command>.freeze, ["~> 1.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<chef-api>.freeze, ["~> 0.5"])
    s.add_dependency(%q<logify>.freeze, ["~> 0.2"])
    s.add_dependency(%q<aruba>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<community-zero>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-command>.freeze, ["~> 1.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
  end
end
