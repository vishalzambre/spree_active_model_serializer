module Spree
  class OrderSerializer < BaseSerializer
    attributes *@@order_attributes
    attributes :display_item_total, :total_quantity, :display_total,
               :display_ship_total, :display_tax_total, :token, :checkout_steps

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
