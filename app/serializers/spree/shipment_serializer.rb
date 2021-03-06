module Spree
  class ShipmentSerializer < BaseSerializer
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
          variant: VariantSmallSerializer.new(manifest.variant),
          quantity: manifest.quantity,
          states: manifest.states
        }
      end
    end

    has_many :shipping_rates, serializer: ShippingRateSerializer
    has_one :selected_shipping_rate, serializer: ShippingRateSerializer
    has_many :shipping_methods
  end
end
