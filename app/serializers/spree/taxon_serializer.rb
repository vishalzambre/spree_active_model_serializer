module Spree
  class TaxonSerializer < BaseSerializer
    attributes :id,
               :name,
               :pretty_name,
               :permalink,
               :parent_id,
               :taxonomy_id

    has_many :children, root: :taxons, serializer: TaxonSerializer
  end
end
