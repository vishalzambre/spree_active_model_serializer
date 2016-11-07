module Spree
  class PaymentSerializer < BaseSerializer
    attributes *@@payment_attributes

    has_one :payment_method, serializer: PaymentMethodSerializer
    has_one :source, serializer: SourceSerializer
  end
end
