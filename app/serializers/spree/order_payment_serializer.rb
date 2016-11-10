module Spree
  class OrderPaymentSerializer < BaseSerializer
    attributes *_helper.payment_attributes

    has_one :payment_method, serializer: PaymentMethodSerializer
    has_one :source, serializer: SourceSerializer
  end
end
