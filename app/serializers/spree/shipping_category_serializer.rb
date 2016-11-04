module Spree
  class ShippingCategorySerializer < BaseSerializer
    embed :ids, include: true

    attributes  :id,
                :name
  end
end