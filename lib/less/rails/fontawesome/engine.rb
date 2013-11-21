require 'rails'

module Less
  module Rails
    module Fontawesome
      class Engine < ::Rails::Engine

        # initializer 'less-rails-bootstrap.setup', :after => 'less-rails.before.load_config_initializers', :group => :all do |app|
        #   app.config.less.paths << File.join(config.root, 'app', 'frameworks')
        # end

        initializer 'less-rails-fontawesome.setup', :after => 'less-rails.before.load_config_initializers', :group => :all do |app|
          app.config.less.paths << File.join(config.root, 'app', 'frameworks')
        end

        initializer 'less-rails-fontawesome.action_controller' do |app|
          ActiveSupport.on_load :action_controller do
            helper Less::Rails::Fontawesome::LinkHelper
          end
        end

      end
    end
  end
end

# module Font
#   module Awesome
#     module Less
#       module Rails
#         class Engine < ::Rails::Engine

#           initializer 'font.awesome.less.rails.setup', :after => 'less-rails.after.load_config_initializers', :group => :all do |app|
#             app.config.less.paths << File.join(config.root, 'vendor', 'frameworks')
#           end

#           initializer 'font.awesome.less.rails.action_controller' do |app|
#             ActiveSupport.on_load :action_controller do
#               helper Font::Awesome::Less::Rails::LinkHelper
#             end
#           end

#         end
#       end
#     end
#   end
# end
