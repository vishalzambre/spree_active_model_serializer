module Spree
  class LineItemSerializer < BaseSerializer
    attributes *_helper.line_item_attributes
    attributes :single_display_amount, :display_amount, :total

    has_one :variant, serializer: VariantSmallSerializer
    has_many :adjustments
  end
end
