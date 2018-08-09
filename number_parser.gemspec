
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "number_parser/version"

Gem::Specification.new do |spec|
  spec.name          = "number_parser"
  spec.version       = NumberParser::VERSION
  spec.authors       = ["marmeladze"]
  spec.email         = ["ziya.bayramov.1@yandex.com"]

  spec.summary       = "Parses a postive integer number to numeric steps"
  spec.description   = "Parses a positive integer to it's steps. e.g. 345 {ones: 5, tens: 4, hundreds: 3}"
  spec.homepage      = "https://github.com/marmeladze/number_parser"
  spec.license       = "The most permissive one"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
