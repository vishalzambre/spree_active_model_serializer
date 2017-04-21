module Spree
  module Api
    module V1
      OptionTypesController.class_eval do
        def default_serializer_options
          { root: false }
        end
      end
    end
  end
end
