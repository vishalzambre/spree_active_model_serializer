module Spree
  class VariantSerializer < BaseSerializer
    attributes  :id,
                :name,
                :sku,
                :price,
                :weight,
                :height,
                :width,
                :depth,
                :is_master,
                :cost_price,
                :slug,
                :description,
                :track_inventory,
                :display_price,
                :options_text,
                :can_supply?,
                :options_text,
                :in_stock,
                :is_backorderable,
                :total_on_hand,
                :is_destroyed

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
