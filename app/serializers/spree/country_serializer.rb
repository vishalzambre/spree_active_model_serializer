module Spree
  class CountrySerializer < BaseSerializer
    attributes  :id,
                :iso_name,
                :iso,
                :iso3,
                :name,
                :numcode,
                :states_required

    has_many :states, serializer: StateSerializer
  end
end
