
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'automodel/version'

Gem::Specification.new do |spec|
  spec.name          = 'automodel-sqlserver'
  spec.version       = Automodel::VERSION
  spec.authors       = ['Nestor Custodio']
  spec.email         = ['sakimorix@gmail.com']

  spec.summary       = 'A fork of "automodel" with the proper dependencies for use with SQL Server.'
  spec.homepage      = 'https://www.github.com/nestor-custodio/automodel-sqlserver'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'pry-byebug', '~> 3.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.3'

  ## Database adapters for development and testing.
  ##
  spec.add_development_dependency 'mysql2', '~> 0.5.1'
  spec.add_development_dependency 'pg', '~> 0.21'
  spec.add_development_dependency 'sqlite3', '~> 1.3.13'

  spec.add_dependency 'activerecord', '~> 4.2'
  spec.add_dependency 'activerecord-sqlserver-adapter', '~> 4.2.0'
  spec.add_dependency 'tiny_tds', '~> 2.1.2'
end
