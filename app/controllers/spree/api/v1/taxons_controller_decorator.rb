module Spree
  module Api
    module V1
      TaxonsController.class_eval do
        def jstree
          @taxon = taxon
          respond_with(@taxon.children, root: false, each_serializer: TaxonJstreeSerializer)
        end
      end
    end
  end
end
