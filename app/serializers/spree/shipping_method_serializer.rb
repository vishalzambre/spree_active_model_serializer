module Spree
  class ShippingMethodSerializer < BaseSerializer
    attributes :id, :code, :name
    has_many :zones, serializer: ShippingZoneSerializer
    has_many :shipping_categories, serializer: ShippingCategorySerializer
  end
end
