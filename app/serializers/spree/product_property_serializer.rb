module Spree
  class ProductPropertySerializer < BaseSerializer
    attributes *_helper.product_property_attributes
  end
end
