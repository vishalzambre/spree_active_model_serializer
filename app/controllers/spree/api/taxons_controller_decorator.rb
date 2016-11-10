module Spree
  module Api
    TaxonsController.class_eval do
      def jstree
        @taxon = taxon
        respond_with(@taxon.children, root: false, each_serializer: TaxonJstreeSerializer)
      end
    end
  end
end
