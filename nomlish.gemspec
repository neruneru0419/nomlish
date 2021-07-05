# frozen_string_literal: true

require_relative "lib/nomlish/version"

Gem::Specification.new do |spec|
  spec.name          = "nomlish"
  spec.version       = Nomlish::VERSION
  spec.authors       = "neruneru0419"
  spec.email         = "neruneru55555@gmail.com"

  spec.summary       = "Do Nomulish translation with ruby."
  spec.description   = <<EOS
  This library makes it possible to handle "Nomlish Translation", 
a service that translates Japanese in a Final Fantasy style, 
from Ruby.
EOS
  spec.homepage      = "https://github.com/neruneru0419/nomlish"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
