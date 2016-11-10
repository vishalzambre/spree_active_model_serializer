module Spree
  class StoreSerializer < BaseSerializer
    attributes *_helper.store_attributes
  end
end
