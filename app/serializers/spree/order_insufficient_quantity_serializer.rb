module Spree
  class OrderInsufficientQuantitySerializer < BaseSerializer
    attributes :error, :errors

    def error
      I18n.t(:could_not_transition, scope: 'spree.api.order')
    end

    def errors
      object.errors.to_hash
    end
  end
end
