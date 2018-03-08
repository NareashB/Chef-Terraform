# -*- encoding: utf-8 -*-
# stub: opscode-pushy-client 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "opscode-pushy-client".freeze
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Anderson".freeze]
  s.date = "2017-04-20"
  s.description = "Client for Chef push jobs server".freeze
  s.email = ["mark@chef.io".freeze]
  s.executables = ["print_execution_environment".freeze, "push-apply".freeze, "pushy-client".freeze, "pushy-service-manager".freeze]
  s.files = ["bin/print_execution_environment".freeze, "bin/push-apply".freeze, "bin/pushy-client".freeze, "bin/pushy-service-manager".freeze]
  s.homepage = "https://github.com/chef/opscode-pushy-client".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Client for Chef push jobs server".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>.freeze, ["< 14.0", ">= 12.19"])
      s.add_runtime_dependency(%q<ohai>.freeze, ["< 14.0", ">= 8.23"])
      s.add_runtime_dependency(%q<ffi-rzmq>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef>.freeze, ["< 14.0", ">= 12.19"])
      s.add_dependency(%q<ohai>.freeze, ["< 14.0", ">= 8.23"])
      s.add_dependency(%q<ffi-rzmq>.freeze, [">= 0"])
      s.add_dependency(%q<uuidtools>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef>.freeze, ["< 14.0", ">= 12.19"])
    s.add_dependency(%q<ohai>.freeze, ["< 14.0", ">= 8.23"])
    s.add_dependency(%q<ffi-rzmq>.freeze, [">= 0"])
    s.add_dependency(%q<uuidtools>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
  end
end
