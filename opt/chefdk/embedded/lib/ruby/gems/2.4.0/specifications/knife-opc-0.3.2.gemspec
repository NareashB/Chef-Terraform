# -*- encoding: utf-8 -*-
# stub: knife-opc 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "knife-opc".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Steven Danna".freeze]
  s.date = "2015-08-25"
  s.description = "Knife Tools for Opscode Chef Server".freeze
  s.email = "steve@opscode.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://wiki.opscode.com/display/chef".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Knife Tools for Opscode Chef Server".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<chef>.freeze, [">= 0"])
      s.add_development_dependency(%q<sdoc>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<chef>.freeze, [">= 0"])
      s.add_dependency(%q<sdoc>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<chef>.freeze, [">= 0"])
    s.add_dependency(%q<sdoc>.freeze, [">= 0"])
  end
end
