require 'voom/presenters/dsl/components/actions/base'

module Voom
  module Presenters
    module Plugins
      module ScrollTo
        class Action < DSL::Components::Actions::Base
          attr_reader :element

          def initialize(element:, **attribs_, &block)
            super(type: :scroll_to, **attribs_, &block)
            @element = element
          end
        end
      end
    end
  end
end
