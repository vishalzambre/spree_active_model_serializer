module Spree
  class StockLocationSerializer < BaseSerializer
    attributes *@@stock_location_attributes

    has_one :country, root: :country, serializer: CountrySerializer
    has_one :state, root: :state, serializer: StateSerializer
  end
end
