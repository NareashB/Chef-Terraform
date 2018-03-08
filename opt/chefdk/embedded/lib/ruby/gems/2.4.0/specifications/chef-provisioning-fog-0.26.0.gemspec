# -*- encoding: utf-8 -*-
# stub: chef-provisioning-fog 0.26.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-provisioning-fog".freeze
  s.version = "0.26.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Keiser".freeze, "Chris McClimans".freeze, "Taylor Carpenter".freeze, "Wavell Watson".freeze, "JJ Asghar".freeze]
  s.date = "2017-10-23"
  s.description = "Driver for creating Fog instances in Chef Provisioning.".freeze
  s.email = ["john@johnkeiser.com".freeze, "hh@vulk.co".freeze, "t@vulk.co".freeze, "w@vulk.co".freeze, "jj@chef.io".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/chef/chef-provisioning-fog".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Driver for creating Fog instances in Chef Provisioning.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-provisioning>.freeze, ["< 3.0", ">= 1.0"])
      s.add_runtime_dependency(%q<cheffish>.freeze, ["< 14.0", ">= 13.1.0"])
      s.add_runtime_dependency(%q<fog-digitalocean>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-joyent>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-openstack>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-rackspace>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-scaleway>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-softlayer>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-xenserver>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<retryable>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<winrm-elevated>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef-provisioning>.freeze, ["< 3.0", ">= 1.0"])
      s.add_dependency(%q<cheffish>.freeze, ["< 14.0", ">= 13.1.0"])
      s.add_dependency(%q<fog-digitalocean>.freeze, [">= 0"])
      s.add_dependency(%q<fog-joyent>.freeze, [">= 0"])
      s.add_dependency(%q<fog-openstack>.freeze, [">= 0"])
      s.add_dependency(%q<fog-rackspace>.freeze, [">= 0"])
      s.add_dependency(%q<fog-scaleway>.freeze, [">= 0"])
      s.add_dependency(%q<fog-softlayer>.freeze, [">= 0"])
      s.add_dependency(%q<fog-xenserver>.freeze, [">= 0"])
      s.add_dependency(%q<retryable>.freeze, [">= 0"])
      s.add_dependency(%q<winrm-elevated>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef-provisioning>.freeze, ["< 3.0", ">= 1.0"])
    s.add_dependency(%q<cheffish>.freeze, ["< 14.0", ">= 13.1.0"])
    s.add_dependency(%q<fog-digitalocean>.freeze, [">= 0"])
    s.add_dependency(%q<fog-joyent>.freeze, [">= 0"])
    s.add_dependency(%q<fog-openstack>.freeze, [">= 0"])
    s.add_dependency(%q<fog-rackspace>.freeze, [">= 0"])
    s.add_dependency(%q<fog-scaleway>.freeze, [">= 0"])
    s.add_dependency(%q<fog-softlayer>.freeze, [">= 0"])
    s.add_dependency(%q<fog-xenserver>.freeze, [">= 0"])
    s.add_dependency(%q<retryable>.freeze, [">= 0"])
    s.add_dependency(%q<winrm-elevated>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
