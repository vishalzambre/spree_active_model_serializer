module Spree
  class ProductSerializer < BaseSerializer
    attributes :id, :name, :description, :price, :display_price, :available_on,
               :slug, :meta_description, :meta_keywords, :shipping_category_id,
               :taxon_ids, :total_on_hand, :has_variants

    has_many :product_properties, serializer: ProductPropertiesSerializer
    has_one :master, root: :master, serializer: VariantSerializer
    has_many :variants, root: :variants, serializer: VariantSerializer
    has_many :taxons, embed: :ids, serializer: TaxonSerializer
    has_many :option_types, serializer: OptionTypesSerializer
    has_many :classifications

    def has_variants
      object.has_variants?
    end
  end
end
