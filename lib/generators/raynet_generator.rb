if defined?(Rails)

  # Rails3 generator invoked with 'rails generate raynet'
  class RaynetGenerator < Rails::Generators::Base
    source_root(File.expand_path(File.dirname(__FILE__) + "/../templates/raynet"))
    def copy_initializer
      copy_file 'raynet_template.rb', 'config/initializers/raynet.rb'
    end
  end

end