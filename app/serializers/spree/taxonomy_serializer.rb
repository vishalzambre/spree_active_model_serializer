module Spree
  class TaxonomySerializer < BaseSerializer
    attributes *_helper.taxonomy_attributes
    has_one :root, key: :root, serializer: TaxonomyTaxonSerializer
  end
end
