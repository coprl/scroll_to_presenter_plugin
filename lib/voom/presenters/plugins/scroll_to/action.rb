require 'voom/presenters/dsl/components/actions/base'

module Voom
  module Presenters
    module Plugins
      module ScrollTo
        class Action < DSL::Components::Actions::Base
          attr_reader :element, :offset, :smooth

          def initialize(element:, **attribs_, &block)
            super(type: :scroll_to, **attribs_, &block)
            @element = element
            @offset = attribs_.fetch(:offset, 0)
            @smooth = attribs_.fetch(:smooth, false)
          end
        end
      end
    end
  end
end
