module Spree
  module Api
    module V1
      OptionValuesController.class_eval do
        def default_serializer_options
          { root: false }
        end
      end
    end
  end
end
