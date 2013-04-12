# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake/benchmark/version'

Gem::Specification.new do |gem|
  gem.name          = "rake-benchmark"
  gem.version       = Rake::Benchmark::VERSION
  gem.authors       = ["StyleSeek Engineering"]
  gem.email         = ["engineering@styleseek.com"]
  gem.description   = %q{Benchmarks your rake tasks and automatically outputs the timing information after it completes.}
  gem.summary       = %q{Benchmark your Rake tasks.}
  gem.homepage      = "https://github.com/styleseek/rake-benchmark"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rake"

  gem.add_development_dependency('bundler',     '~> 1.3')
  gem.add_development_dependency('minitest',    '~> 4.2')
  gem.add_development_dependency('ansi',        '~> 1.4')
  gem.add_development_dependency('turn',        '~> 0.9')
  gem.add_development_dependency('pry',         '~> 0.9')
  gem.add_development_dependency('mocha',       '~> 0.13')
  gem.add_development_dependency('gem-release', '~> 0.4')
end
