module Spree
  class ProductPropertiesSerializer < BaseSerializer
    attributes *@@product_property_attributes
  end
end
