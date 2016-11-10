module Spree
  module Api
    OptionTypesController.class_eval do
      def default_serializer_options
        { root: false }
      end
    end
  end
end
