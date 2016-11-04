module Spree
  class StockLocationSerializer < BaseSerializer
    embed :ids, include: true

    attributes  :id,
                :name

  end
end