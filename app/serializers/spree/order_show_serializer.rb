module Spree
  class OrderShowSerializer < BaseSerializer
    attributes *@@order_attributes
    attributes :display_item_total, :total_quantity, :display_total,
               :display_ship_total, :display_tax_total, :token, :checkout_steps,
               :valid_credit_cards

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

    def display_item_total
      object.display_item_total.to_s
    end

    def total_quantity
      object.line_items.sum(:quantity)
    end

    def display_total
      object.display_total.to_s
    end

    def display_ship_total
      object.display_ship_total
    end

    def display_tax_total
      object.display_tax_total
    end

    def token
      object.guest_token
    end

    def checkout_steps
      object.checkout_steps
    end
  end
end
