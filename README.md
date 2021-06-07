# Scroll to Presenter Plugin

A [COPRL](http://github.com/coprl/coprl) presenter plugin that provides scroll_to action to scroll the browser to an element on an event

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scroll_to_presenter_plugin', git: 'https://github.com/coprl/scroll_to_presenter_plugin', require: false
```

And then execute:

    $ bundle


## Usage in POMs

Declare the plugin in your pom, `plugin :scroll_to`.

Inside an event block cll scroll_to with the element to scroll to. 

    button :scroll do
      event :click do
        scroll_to :scroll_target
      end
    end
    (1..100).each do
      body '.'
    end
    title 'Thanks for scrolling here', id: :scroll_target

You can also pass the options `smooth`(truthy) and `offset`(pixels) to fine tune your scrolling experience.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/coprl/scroll_to_presenter_plugin.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the COPRL project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/coprl/coprl/blob/master/CODE-OF-CONDUCT.md).
