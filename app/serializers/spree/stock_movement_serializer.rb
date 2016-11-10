module Spree
  class StockMovementSerializer < BaseSerializer
    attributes *_helper.stock_movement_attributes

    has_one :stock_item, key: :stock_item, serializer: StockItemSerializer
  end
end
