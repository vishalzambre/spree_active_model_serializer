module Spree
  class TaxonomyTaxonSerializer < BaseSerializer
    attributes *_helper.taxon_attributes
    attributes :taxons

    def taxons
      object.children.map do |taxon|
        which_serializer.new(taxon)
      end
    end

    def which_serializer
      options['set'] == 'nested' ? TaxonNestedChildrenSerializer : TaxonNestedSerializer
    end
  end
end
