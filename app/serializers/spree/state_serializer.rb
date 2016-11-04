module Spree
  class StateSerializer < BaseSerializer
    # embed :ids, include: true

    attributes  :id,
                :name,
                :abbr

    has_one :country, include: false

  end
end