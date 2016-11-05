module Spree
  class ProductPropertiesSerializer < BaseSerializer
    attributes :id, :product_id, :property_id, :value, :property_name, :presentation

    def presentation
      object.property.presentation
    end
  end
end
