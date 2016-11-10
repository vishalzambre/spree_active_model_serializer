module Spree
  class TaxonNestedChildrenSerializer < BaseSerializer
    attributes *_helper.taxon_attributes
    has_many :children, key: :taxons, serializer: TaxonNestedChildrenSerializer
  end
end
