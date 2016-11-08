module Spree
  class TaxonSerializer < BaseSerializer
    attributes *@@taxon_attributes

    has_many :children, root: :taxons, serializer: TaxonSerializer
  end
end
