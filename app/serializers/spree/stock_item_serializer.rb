module Spree
  class StockItemSerializer < BaseSerializer
    attributes :id, :count_on_hand, :backorderable, :stock_location_id,
               :variant_id

    has_one :variant, key: :variant, serializer: VariantSmallSerializer
  end
end
