module Spree
  class InventoryUnitSerializer < BaseSerializer
    attributes :id, :state, :variant_id, :shipment_id
  end
end
