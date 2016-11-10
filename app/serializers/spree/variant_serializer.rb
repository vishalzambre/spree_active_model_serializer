module Spree
  class VariantSerializer < BaseSerializer
    attributes *_helper.variant_attributes
    attributes :display_price, :options_text, :track_inventory, :in_stock,
               :is_backorderable, :total_on_hand, :is_destroyed

    has_many :option_values, key: :option_values, serializer: OptionValueSerializer
    has_many :images, serializer: ImageSerializer
    has_many :stock_items, serializer: StockItemVariantSerializer

    def track_inventory
      object.should_track_inventory?
    end

    def in_stock
      object.in_stock?
    end

    def is_backorderable
      object.is_backorderable?
    end

    def is_destroyed
      object.destroyed?
    end
  end
end
