module Spree
  class CountrySerializer < BaseSerializer
    attributes *_helper.country_attributes

    has_many :states, serializer: StateSerializer
  end
end
