module Spree
  class LineItemSerializer < BaseSerializer
    attributes *@@line_item_attributes
    attributes :single_display_amount, :display_amount

    has_one :variant
    has_one :order, embed: :number, serializer: LineItemOrderSerializer
    has_many :adjustments
  end
end
