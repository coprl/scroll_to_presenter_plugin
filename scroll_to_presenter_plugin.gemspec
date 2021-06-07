lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scroll_to_presenter_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = 'scroll_to_presenter_plugin'
  spec.version       = ScrollToPresenterPlugin::VERSION
  spec.authors       = ['Chris Marques','Russell Edens']
  spec.email         = ["russell@voomify.com"]

  spec.summary       = %q{A COPRL presenter plugin that provides scroll_to action to scroll the browser to an element on an event}
  spec.homepage      = 'http://github.com/coprl/scroll_to_presenters_plugin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', "~> 2.0"
  spec.add_development_dependency 'rake', "~> 10.0"
end
