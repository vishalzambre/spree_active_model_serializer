module Spree
  module Api
    OptionValuesController.class_eval do
      def default_serializer_options
        { root: false }
      end
    end
  end
end
