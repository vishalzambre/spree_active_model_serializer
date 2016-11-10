module Spree
  class CreditCardSerializer < BaseSerializer
    attributes *_helper.creditcard_attributes
  end
end
