module Spree
  class StateSerializer < BaseSerializer
    attributes  *_helper.state_attributes

    has_one :country, embed: :ids
  end
end
