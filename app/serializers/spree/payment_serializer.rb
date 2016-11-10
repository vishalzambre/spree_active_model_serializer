module Spree
  class PaymentSerializer < BaseSerializer
    attributes *_helper.payment_attributes
  end
end
