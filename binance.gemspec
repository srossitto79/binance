lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'binance/version'

Gem::Specification.new do |spec|
  spec.name          = 'binance'
  spec.version       = Binance::VERSION
  spec.authors       = ['Charles Ray Shisler III']
  spec.email         = ['charles@cray.io']

  spec.summary       = 'API Wrapper for the Binance cryptocurrency exchange.'
  spec.homepage      = 'https://github.com/srossitto79/binance'
  spec.license       = 'MIT'

  spec.files         = Dir['bin/*'] +
                       Dir['lib/**/*.rb']

  spec.require_paths = ['lib']

  spec.bindir        = 'bin'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.10'

  spec.add_runtime_dependency 'faraday', '~> 1.4'
  spec.add_runtime_dependency 'faraday_middleware', '~> 1.0'
  spec.add_runtime_dependency 'faye-websocket', '~> 0.11'
end
