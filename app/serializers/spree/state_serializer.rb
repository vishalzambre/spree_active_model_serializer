module Spree
  class StateSerializer < BaseSerializer
    attributes  *@@state_attributes

    has_one :country, embed: :ids
  end
end
