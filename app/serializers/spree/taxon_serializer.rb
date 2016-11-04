module Spree
  class TaxonSerializer < BaseSerializer
    embed :ids, include: true

    attributes :id,
               :name,
               :pretty_name,
               :permalink,
               :parent_id,
               :taxonomy_id
  end
end