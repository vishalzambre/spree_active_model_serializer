module Spree
  class ClassificationSerializer < BaseSerializer
    attributes :taxon_id, :position
    has_one :taxon, serializer: TaxonSerializer
  end
end
