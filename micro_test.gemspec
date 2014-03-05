require File.join(File.dirname(__FILE__), "lib", "micro_test", "version")

Gem::Specification.new do |spec|
  spec.name                  = "micro_test"
  spec.version               = MicroTest::VERSION
  spec.license               = "MIT"
  spec.homepage              = "https://github.com/hopsoft/micro_test"
  spec.summary               = "The Sinatra of testing frameworks."
  spec.description           = "The Sinatra of testing frameworks."

  spec.authors               = ["Nathan Hopkins"]
  spec.email                 = ["natehop@gmail.com"]

  spec.required_ruby_version = ">= 1.9.2"
  spec.extensions            = "ext/mkrf_conf.rb"
  spec.add_dependency "os"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-stack_explorer"
  spec.add_development_dependency "pry-rescue"

  # spec.add_dependency "pry"
  # spec.add_dependency "pry-stack_explorer"
  # see: ext/mkrf_conf.rb for how we install the pry dependencies.
  # also see:
  # http://en.wikibooks.org/wiki/Ruby_Programming/RubyGems#How_to_install_different_versions_of_gems_depending_on_which_version_of_ruby_the_installee_is_using

  spec.files = Dir["ext/mkrf_conf.rb", "lib/**/*.rb", "bin/*", "[A-Z].*"]
  spec.test_files = Dir["test/**/*.rb"]
  spec.executables << "mt"
end
