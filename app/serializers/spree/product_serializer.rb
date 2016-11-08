module Spree
  class ProductSerializer < BaseSerializer
    attributes *@@product_attributes
    attributes :has_variants

    has_one :master, root: :master, serializer: VariantSmallSerializer
    has_many :variants, root: :variants, serializer: VariantSmallSerializer
    has_many :option_types, root: :option_types, serializer: OptionTypeSerializer
    has_many :product_properties, serializer: ProductPropertySerializer
    has_many :classifications

    def has_variants
      object.has_variants?
    end
  end
end
