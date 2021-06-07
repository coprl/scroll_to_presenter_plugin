require 'coprl/presenters/dsl/components/actions/base'

module Coprl
  module Presenters
    module Plugins
      module ScrollTo
        class Action < DSL::Components::Actions::Base
          attr_reader :element, :offset, :smooth

          def initialize(element:, **attribs_, &block)
            super(type: :scroll_to, **attribs_, &block)
            @element = element
            @offset = attribs_.fetch(:offset, Settings.config.offset)
            @smooth = attribs_.fetch(:smooth, Settings.config.smooth)
          end
        end
      end
    end
  end
end
