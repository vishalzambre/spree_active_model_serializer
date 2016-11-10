module Spree
  class TaxonJstreeSerializer < BaseSerializer
    attributes :data, :attr, :state

    def data
      object.name
    end

    def attr
      { id: object.id, name: object.name }
    end

    def state
      'closed'
    end
  end
end
