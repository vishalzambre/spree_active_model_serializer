module Spree
  class OrderShowSerializer < OrderSerializer
    attributes *_helper.order_attributes
    attributes :valid_credit_cards

    has_one :billing_address, key: :bill_address, serializer: AddressSerializer
    has_one :shipping_address, key: :ship_address, serializer: AddressSerializer
    has_many :line_items, key: :line_items, serializer: LineItemSerializer
    has_many :payments, key: :payments, serializer: OrderPaymentSerializer
    has_many :shipments, key: :shipments, serializer: ShipmentSmallSerializer
    has_many :adjustments, serializer: AdjustmentSerializer

    def valid_credit_cards
      object.valid_credit_cards.map do |credit_card|
        CreditCardSerializer.new(credit_card)
      end
    end
  end
end
