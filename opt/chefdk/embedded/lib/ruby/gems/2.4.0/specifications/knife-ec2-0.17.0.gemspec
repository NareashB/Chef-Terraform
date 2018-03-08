# -*- encoding: utf-8 -*-
# stub: knife-ec2 0.17.0 ruby lib

Gem::Specification.new do |s|
  s.name = "knife-ec2".freeze
  s.version = "0.17.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam Jacob".freeze, "Seth Chisamore".freeze]
  s.date = "2018-02-07"
  s.description = "EC2 Support for Chef's Knife Command".freeze
  s.email = ["adam@chef.io".freeze, "schisamo@chef.io".freeze]
  s.homepage = "https://github.com/chef/knife-ec2".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "EC2 Support for Chef's Knife Command".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-aws>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<knife-windows>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<chef>.freeze, [">= 12.2.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<sdoc>.freeze, ["~> 0.3"])
    else
      s.add_dependency(%q<fog-aws>.freeze, ["~> 1.0"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_dependency(%q<knife-windows>.freeze, ["~> 1.0"])
      s.add_dependency(%q<chef>.freeze, [">= 12.2.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<sdoc>.freeze, ["~> 0.3"])
    end
  else
    s.add_dependency(%q<fog-aws>.freeze, ["~> 1.0"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    s.add_dependency(%q<knife-windows>.freeze, ["~> 1.0"])
    s.add_dependency(%q<chef>.freeze, [">= 12.2.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<sdoc>.freeze, ["~> 0.3"])
  end
end
