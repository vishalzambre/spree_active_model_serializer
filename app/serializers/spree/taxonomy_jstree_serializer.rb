module Spree
  class TaxonomyJstreeSerializer < BaseSerializer
    attributes :data, :attr, :state

    def data
      object.root.name
    end

    def attr
      { id: object.root.id, name: object.root.name }
    end

    def state
      'closed'
    end
  end
end
