module Spree
  class ShippingRateSerializer < BaseSerializer
    # embed :ids, include: true

    attributes  :id,
                :name,
                :cost,
                :selected,
                :display_cost

    has_one :shipping_method, serializer: ShippingMethodSerializer

  end
end