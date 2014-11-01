Gem::Specification.new do |s|
  s.name          = 'exponential_backoff'
  s.version       = '0.1.0'
  s.summary       = 'Exponential Backoff'
  s.description   = 'Simple Exponential Backoff in Ruby'
  s.author        = 'Martin Manelli'
  s.email         = 'manelli.ml@gmail.com'
  s.homepage      = 'http://github.com/manelli/exponential_backoff'
  s.license       = 'MIT'
  s.require_paths = ['lib']

  s.files = Dir[
    'LICENSE',
    'README.md',
    'makefile',
    'lib/exponential_backoff.rb',
    'tests/exponential_backoff_test.rb',
    'exponential_backoff.gemspec'
  ]
end
