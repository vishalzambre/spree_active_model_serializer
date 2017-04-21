module Spree
  module Api
    module V1
      TaxonomiesController.class_eval do
        def jstree
          respond_with(taxonomy, serializer: TaxonomyJstreeSerializer)
        end
      end
    end
  end
end
