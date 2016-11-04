module Spree
  class StateSerializer < BaseSerializer
    attributes  :id,
                :name,
                :abbr

    has_one :country, embed: :ids

  end
end
