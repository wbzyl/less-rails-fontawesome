module Font
  module Awesome
    module Less
      module Rails
        class Engine < ::Rails::Engine
          initializer 'font.awesome.less.rails.action_controller' do |app|
            ActiveSupport.on_load :action_controller do
              helper Font::Awesome::Less::Rails::LinkHelper
            end
          end
        end
      end
    end
  end
end
