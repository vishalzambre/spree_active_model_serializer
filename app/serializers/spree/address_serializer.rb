module Spree
  class AddressSerializer < BaseSerializer
    attributes *_helper.address_attributes
    attributes :state, :country

    def state
      StateSerializer.new(object.state).attributes
    end

    def country
      CountrySerializer.new(object.country).attributes
    end
  end
end
