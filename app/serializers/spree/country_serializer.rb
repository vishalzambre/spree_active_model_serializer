module Spree
  class CountrySerializer < BaseSerializer
    attributes *@@country_attributes

    has_many :states, serializer: StateSerializer
  end
end
