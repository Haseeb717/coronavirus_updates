require_relative 'lib/coronavirus_updates/version'

Gem::Specification.new do |spec|
  spec.name          = "coronavirus_updates"
  spec.version       = CoronavirusUpdates::VERSION
  spec.authors       = ["haseeb"]
  spec.email         = ["haseeb.ahmad717@gmail.com"]

  spec.summary       = %q{Coronavirus Daily Updates}
  spec.description   = %q{To track the number of people affected by Coronavirus in all countries. Updates of people recovered , newly cases ,states, countries effect by this disease.}
  
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.homepage      = "https://github.com/Haseeb717/coronavirus_updates.git/"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
