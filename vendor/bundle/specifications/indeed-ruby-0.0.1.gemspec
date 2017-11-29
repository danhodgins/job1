# -*- encoding: utf-8 -*-
# stub: indeed-ruby 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "indeed-ruby"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Indeed Labs"]
  s.date = "2012-10-19"
  s.description = "Indeed Job Search Ruby Api Client"
  s.email = "labs-team@indeed.com"
  s.homepage = "http://github.com/indeedlabs/indeed-ruby"
  s.rubygems_version = "2.5.1"
  s.summary = "Indeed Job Search Ruby Api Client"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, [">= 1.6.7"])
      s.add_runtime_dependency(%q<json>, [">= 1.7.5"])
    else
      s.add_dependency(%q<rest-client>, [">= 1.6.7"])
      s.add_dependency(%q<json>, [">= 1.7.5"])
    end
  else
    s.add_dependency(%q<rest-client>, [">= 1.6.7"])
    s.add_dependency(%q<json>, [">= 1.7.5"])
  end
end
