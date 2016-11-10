module Spree
  class ProductSerializer < BaseSerializer
    attributes *_helper.product_attributes
    attributes :has_variants

    has_one :master, key: :master, serializer: VariantSmallSerializer
    has_many :variants, key: :variants, serializer: VariantSmallSerializer
    has_many :option_types, key: :option_types, serializer: OptionTypeSerializer
    has_many :product_properties, serializer: ProductPropertySerializer
    has_many :classifications

    def has_variants
      object.has_variants?
    end
  end
end
