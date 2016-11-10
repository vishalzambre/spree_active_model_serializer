module Spree
  class StockLocationSerializer < BaseSerializer
    attributes *_helper.stock_location_attributes

    has_one :country, key: :country, serializer: CountrySerializer
    has_one :state, key: :state, serializer: StateSerializer
  end
end
