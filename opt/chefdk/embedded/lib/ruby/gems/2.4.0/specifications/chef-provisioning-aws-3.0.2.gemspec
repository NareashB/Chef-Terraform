# -*- encoding: utf-8 -*-
# stub: chef-provisioning-aws 3.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-provisioning-aws".freeze
  s.version = "3.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tyler Ball".freeze]
  s.date = "2018-02-15"
  s.description = "Provisioner for creating aws containers in Chef Provisioning.".freeze
  s.email = "tball@chef.io".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/chef/chef-provisioning-aws".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.9".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Provisioner for creating aws containers in Chef Provisioning.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-provisioning>.freeze, ["< 3.0", ">= 1.0"])
      s.add_runtime_dependency(%q<aws-sdk>.freeze, ["< 3.0", ">= 2.2.18"])
      s.add_runtime_dependency(%q<retryable>.freeze, [">= 2.0.1", "~> 2.0"])
      s.add_runtime_dependency(%q<ubuntu_ami>.freeze, [">= 0.4.1", "~> 0.4"])
    else
      s.add_dependency(%q<chef-provisioning>.freeze, ["< 3.0", ">= 1.0"])
      s.add_dependency(%q<aws-sdk>.freeze, ["< 3.0", ">= 2.2.18"])
      s.add_dependency(%q<retryable>.freeze, [">= 2.0.1", "~> 2.0"])
      s.add_dependency(%q<ubuntu_ami>.freeze, [">= 0.4.1", "~> 0.4"])
    end
  else
    s.add_dependency(%q<chef-provisioning>.freeze, ["< 3.0", ">= 1.0"])
    s.add_dependency(%q<aws-sdk>.freeze, ["< 3.0", ">= 2.2.18"])
    s.add_dependency(%q<retryable>.freeze, [">= 2.0.1", "~> 2.0"])
    s.add_dependency(%q<ubuntu_ami>.freeze, [">= 0.4.1", "~> 0.4"])
  end
end
