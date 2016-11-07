module Spree
  class ShippingRateSerializer < BaseSerializer
    attributes  :id, :name, :cost, :selected, :shipping_method_id, :shipping_method_code

    def display_cost
      object.display_cost.to_s
    end
  end
end
