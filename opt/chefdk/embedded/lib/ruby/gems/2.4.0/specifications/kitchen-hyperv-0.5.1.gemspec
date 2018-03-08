# -*- encoding: utf-8 -*-
# stub: kitchen-hyperv 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-hyperv".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Steven Murawski".freeze]
  s.date = "2017-09-08"
  s.description = "Hyper-V Driver for Test-Kitchen".freeze
  s.email = ["steven.murawski@gmail.com".freeze]
  s.homepage = "https://github.com/test-kitchen/kitchen-hyperv".freeze
  s.licenses = ["Apache 2".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Hyper-V Driver for Test-Kitchen".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_development_dependency(%q<cane>.freeze, [">= 0"])
      s.add_development_dependency(%q<finstyle>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<countloc>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_dependency(%q<cane>.freeze, [">= 0"])
      s.add_dependency(%q<finstyle>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<countloc>.freeze, [">= 0"])
      s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
    s.add_dependency(%q<cane>.freeze, [">= 0"])
    s.add_dependency(%q<finstyle>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<countloc>.freeze, [">= 0"])
    s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
  end
end
