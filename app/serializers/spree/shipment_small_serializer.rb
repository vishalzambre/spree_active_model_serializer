module Spree
  class ShipmentSmallSerializer < BaseSerializer
    attributes *_helper.shipment_attributes
    attributes :order_id, :stock_location_name, :manifest

    def order_id
      object.order.number
    end

    def stock_location_name
      object.stock_location.name
    end

    def manifest
      object.manifest.map do |manifest|
        {
          variant_id: manifest.variant.id,
          quantity: manifest.quantity,
          states: manifest.states
        }
      end
    end

    has_many :shipping_rates, serializer: ShippingRateSerializer
    has_one :selected_shipping_rate, serializer: ShippingRateSerializer
    has_many :shipping_methods
    has_many :adjustments, serializer: AdjustmentSerializer
  end
end
