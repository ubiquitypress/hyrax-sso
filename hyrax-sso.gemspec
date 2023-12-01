require_relative 'lib/hyrax/sso/version'

Gem::Specification.new do |spec|
  spec.name          = "hyrax-sso"
  spec.version       = Hyrax::Sso::VERSION
  spec.authors       = ["DanukaH"]
  spec.email         = ["danuka.hettiarachchi@ubiquitypress.com"]

  spec.summary       = "Integration of WorkOs"
  spec.description   = "Integration of WorkOs"
  spec.homepage      = "http://www.github.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.github.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end + Dir['lib/**/*', 'app/views/**/*']
  spec.test_files    = `git ls-files -z`.split("\x0").grep(%r{^(test|spec|features)/})
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "workos", "~> 2.10"
end
