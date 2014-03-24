require 'blacklight'
module Blacklight::FacetMultiselect
  class Engine < ::Rails::Engine
    initializer 'blacklight-facet_multiselect.helpers' do |app|
      ActionView::Base.send :include, Blacklight::FacetMultiselect::MultiselectHelper
    end
  end
end
