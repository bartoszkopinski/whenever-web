# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "whenever-web"
  spec.version       = "0.0.4"
  spec.authors       = ["Bartosz Kopinski"]
  spec.email         = ["bartosz.kopinski@gmail.pl"]
  spec.summary       = %q{Web GUI for Whenever gem}
  spec.description   = %q{Rails based web GUI for managing Whenever Cron jobs}
  spec.homepage      = "https://github.com/bartoszkopinski/whenever-web"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "rails"
  spec.add_dependency "whenever"
end
