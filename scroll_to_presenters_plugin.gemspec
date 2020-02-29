lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'voom/presenters/plugins/scroll_to/version'

Gem::Specification.new do |spec|
  spec.name          = 'scroll_to_presenters_plugin'
  spec.version       = Voom::Presenters::Plugins::ScrollTo::VERSION
  spec.authors       = ['Chris Marques']
  spec.email         = ['chris@geotix.com']

  spec.summary       = %q{Scroll to element action.}
  spec.homepage      = 'http://github.com/NullTerminator/scroll_to_presenters_plugin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
