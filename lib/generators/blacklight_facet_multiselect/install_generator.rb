require 'rails/generators'

module BlacklightGallery
  class Install < Rails::Generators::Base
    def assets
    end
    
    def inject_behaviors_into_catalog_controller
      insert_into_file "app/controllers/catalog_controller.rb", after: 'include Blacklight::Catalog' do
        "\n  include Blacklight::Facet::Multiselect::Controller\n"
      end
    end
  end
end
