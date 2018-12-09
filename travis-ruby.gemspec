Gem::Specification.new do |spec|
  spec.name          = 'travis-ruby'
  spec.version       = '0.0.1'
  spec.authors       = ['Claudio Bley']
  spec.summary       = 'check travis tty'
  spec.homepage      = 'https://github.com/avdv/travis-ruby'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.2.0'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'rspec-its', '~> 1.2'
  spec.add_development_dependency 'rubocop', '~> 0.61.1'
end
