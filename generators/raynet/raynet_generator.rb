class RaynetGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file "raynet.rb", "config/initializers/raynet.rb"
    end
  end
end
