module Spree
  class TaxonSerializer < BaseSerializer
    attributes *_helper.taxon_attributes
    attributes :taxons

    def taxons
      return if options['without_children']
      object.children.map do |taxon|
        TaxonNestedChildrenSerializer.new(taxon)
      end
    end
  end
end
