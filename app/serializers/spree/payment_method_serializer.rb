module Spree
  class PaymentMethodSerializer < BaseSerializer
    embed :ids, include: true

    attributes :id,
               :name,
               :description,
               :method_type
  end
end