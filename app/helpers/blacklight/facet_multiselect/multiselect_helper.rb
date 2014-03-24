require 'blacklight'
module Blacklight::FacetMultiselect
  module MultiselectHelper
    def facet_partial_name display_facet
      config = facet_configuration_for_field(display_facet.name)
      name = config.try(:partial)
      name ||= 'facet_multiselect' if config.multiselect
      name ||= super
    end
  end
end
