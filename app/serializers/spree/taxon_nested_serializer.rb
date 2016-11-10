module Spree
  class TaxonNestedSerializer < BaseSerializer
    attributes *_helper.taxon_attributes
  end
end
