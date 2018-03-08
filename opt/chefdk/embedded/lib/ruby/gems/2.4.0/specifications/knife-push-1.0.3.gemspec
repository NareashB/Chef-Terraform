# -*- encoding: utf-8 -*-
# stub: knife-push 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "knife-push".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Keiser".freeze]
  s.date = "2017-08-01"
  s.description = "Knife plugin for Chef push".freeze
  s.email = "jkeiser@chef.io".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://www.chef.io".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Knife plugin for Chef push".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>.freeze, [">= 12.7.2"])
    else
      s.add_dependency(%q<chef>.freeze, [">= 12.7.2"])
    end
  else
    s.add_dependency(%q<chef>.freeze, [">= 12.7.2"])
  end
end
