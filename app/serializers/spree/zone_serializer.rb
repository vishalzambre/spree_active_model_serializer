module Spree
  class ZoneSerializer < BaseSerializer
    # embed :ids, include: true

    attributes  :id,
                :name,
                :description

  end
end