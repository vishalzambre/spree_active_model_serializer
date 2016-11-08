module Spree
  class ProductPropertySerializer < BaseSerializer
    attributes *@@product_property_attributes
  end
end
