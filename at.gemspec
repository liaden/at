lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "at/version"

Gem::Specification.new do |spec|
  spec.name          = "at"
  spec.version       = At::VERSION
  spec.authors       = ["Joel Johnson"]
  spec.email         = ["johnson.joel.b@gmail.com"]

  spec.summary       = %q{CLI date parsing tool}
  spec.description   = %q{Date parsing using activesupport's functionality}
  spec.homepage      = "https://github.com/liaden/at"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://gitub.com/liaden/at"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "activesupport"
end
