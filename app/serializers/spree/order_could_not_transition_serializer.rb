module Spree
  class OrderCouldNotTransitionSerializer < BaseSerializer
    attributes :error, :errors

    def error
      I18n.t(:could_not_transition, scope: "spree.api.order")
    end

    def errors
      @order.errors.to_hash
    end
  end
end
