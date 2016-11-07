module Spree
  class CreditCardSerializer < BaseSerializer
    attributes *@@creditcard_attributes
  end
end
