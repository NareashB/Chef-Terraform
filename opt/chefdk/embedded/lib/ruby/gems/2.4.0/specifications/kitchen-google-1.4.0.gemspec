# -*- encoding: utf-8 -*-
# stub: kitchen-google 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-google".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Leonard".freeze, "Chef Partner Engineering".freeze]
  s.date = "2016-03-10"
  s.description = "A Test-Kitchen driver for Google Compute Engine".freeze
  s.email = ["andy@hurricane-ridge.com".freeze, "partnereng@chef.io".freeze]
  s.homepage = "https://github.com/test-kitchen/kitchen-google".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Kitchen::Driver::Gce".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gcewinpass>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<google-api-client>.freeze, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.5"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<gcewinpass>.freeze, ["~> 1.0"])
      s.add_dependency(%q<google-api-client>.freeze, ["~> 0.9.0"])
      s.add_dependency(%q<test-kitchen>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.5"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<gcewinpass>.freeze, ["~> 1.0"])
    s.add_dependency(%q<google-api-client>.freeze, ["~> 0.9.0"])
    s.add_dependency(%q<test-kitchen>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.5"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
