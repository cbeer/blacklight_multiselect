require 'rails/generators'

class TestAppGenerator < Rails::Generators::Base
  def run_blacklight_generator
    say_status("warning", "GENERATING BL", :yellow)       
    
    gem 'blacklight'
    
    Bundler.with_clean_env do
      run "bundle install"
    end

    generate 'blacklight:install'
  end

  def run_gallery_install
    generate 'blacklight_facet_multiselect:install'
  end

end
