module Spree
  class OrderShowSerializer < OrderSerializer
    attributes *@@order_attributes
    attributes :valid_credit_cards

    has_one :billing_address, root: :billing_address, serializer: AddressSerializer
    has_one :shipping_address, root: :shipping_address, serializer: AddressSerializer
    has_many :line_items, root: :line_items, serializer: LineItemSerializer
    has_many :payments, root: :payments, serializer: PaymentSerializer
    has_many :shipments, root: :payments, serializer: ShipmentSerializer
    has_many :adjustments

    def valid_credit_cards
      object.valid_credit_cards.map do |credit_card|
        CreditCardSerializer.new(credit_card)
      end
    end
  end
end
