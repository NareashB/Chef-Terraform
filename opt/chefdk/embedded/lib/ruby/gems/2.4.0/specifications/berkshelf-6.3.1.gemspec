# -*- encoding: utf-8 -*-
# stub: berkshelf 6.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "berkshelf".freeze
  s.version = "6.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 2.0.0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamie Winsor".freeze, "Josiah Kiehl".freeze, "Michael Ivey".freeze, "Justin Campbell".freeze, "Seth Vargo".freeze]
  s.date = "2017-08-22"
  s.description = "Manages a Cookbook's, or an Application's, Cookbook dependencies".freeze
  s.email = ["jamie@vialstudios.com".freeze, "jkiehl@riotgames.com".freeze, "michael.ivey@riotgames.com".freeze, "justin@justincampbell.me".freeze, "sethvargo@gmail.com".freeze]
  s.executables = ["berks".freeze]
  s.files = ["bin/berks".freeze]
  s.homepage = "http://berkshelf.com".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.1".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Manages a Cookbook's, or an Application's, Cookbook dependencies".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<buff-config>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<buff-extensions>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<cleanroom>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.7"])
      s.add_runtime_dependency(%q<minitar>.freeze, [">= 0.5.4", "~> 0.5"])
      s.add_runtime_dependency(%q<retryable>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<ridley>.freeze, ["~> 5.0"])
      s.add_runtime_dependency(%q<solve>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<thor>.freeze, ["< 0.19.2", "~> 0.19"])
      s.add_runtime_dependency(%q<octokit>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<mixlib-archive>.freeze, ["~> 0.4"])
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<chef>.freeze, [">= 12.7.2"])
    else
      s.add_dependency(%q<buff-config>.freeze, ["~> 2.0"])
      s.add_dependency(%q<buff-extensions>.freeze, ["~> 2.0"])
      s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
      s.add_dependency(%q<cleanroom>.freeze, ["~> 1.0"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.7"])
      s.add_dependency(%q<minitar>.freeze, [">= 0.5.4", "~> 0.5"])
      s.add_dependency(%q<retryable>.freeze, ["~> 2.0"])
      s.add_dependency(%q<ridley>.freeze, ["~> 5.0"])
      s.add_dependency(%q<solve>.freeze, ["~> 4.0"])
      s.add_dependency(%q<thor>.freeze, ["< 0.19.2", "~> 0.19"])
      s.add_dependency(%q<octokit>.freeze, ["~> 4.0"])
      s.add_dependency(%q<mixlib-archive>.freeze, ["~> 0.4"])
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_dependency(%q<chef>.freeze, [">= 12.7.2"])
    end
  else
    s.add_dependency(%q<buff-config>.freeze, ["~> 2.0"])
    s.add_dependency(%q<buff-extensions>.freeze, ["~> 2.0"])
    s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
    s.add_dependency(%q<cleanroom>.freeze, ["~> 1.0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.7"])
    s.add_dependency(%q<minitar>.freeze, [">= 0.5.4", "~> 0.5"])
    s.add_dependency(%q<retryable>.freeze, ["~> 2.0"])
    s.add_dependency(%q<ridley>.freeze, ["~> 5.0"])
    s.add_dependency(%q<solve>.freeze, ["~> 4.0"])
    s.add_dependency(%q<thor>.freeze, ["< 0.19.2", "~> 0.19"])
    s.add_dependency(%q<octokit>.freeze, ["~> 4.0"])
    s.add_dependency(%q<mixlib-archive>.freeze, ["~> 0.4"])
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    s.add_dependency(%q<chef>.freeze, [">= 12.7.2"])
  end
end
