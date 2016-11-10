module Spree
  module Api
    TaxonomiesController.class_eval do
      def jstree
        respond_with(taxonomy, serializer: TaxonomyJstreeSerializer)
      end
    end
  end
end
