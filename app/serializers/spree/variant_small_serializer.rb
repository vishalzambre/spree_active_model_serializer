module Spree
  class VariantSmallSerializer < BaseSerializer
    attributes *@@variant_attributes
    attributes :display_price, :options_text, :track_inventory, :in_stock,
               :is_backorderable, :total_on_hand, :is_destroyed, :product_id

    has_many :images, serializer: ImageSerializer
    has_many :option_values, root: :option_values, serializer: OptionValuesSerializer

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
