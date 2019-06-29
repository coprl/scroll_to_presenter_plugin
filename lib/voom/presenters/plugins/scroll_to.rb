require_relative 'scroll_to/action'

module Voom
  module Presenters
    module Plugins
      module ScrollTo

        class Settings
          extend Dry::Configurable
          setting :offset, 0
          setting :smooth, true
        end

        module DSLEventActions
          def scroll_to(element, **attributes, &block)
            self << ScrollTo::Action.new(element: element, parent: self, **attributes, &block)
          end
        end

        module WebClientComponents
          def render_header_scroll_to(_pom, render:)
            view_dir = File.join(__dir__, 'scroll_to')
            render.call :erb, :scroll_to_header, views: view_dir
          end
        end

        module WebClientActions
          def action_data_scroll_to(action, parent_id, *)
            options = action.options.to_h.merge(
              __parent_id__: parent_id,
              element: action.element,
              offset: action.offset,
              smooth: action.smooth
            )

            # Type, URL, Options, Params (passed into javascript event/action classes)
            [action.type, nil, options, action.attributes.to_h]
          end
        end

      end
    end
  end
end
