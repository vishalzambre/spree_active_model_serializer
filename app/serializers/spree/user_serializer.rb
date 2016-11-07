module Spree
  class UserSerializer < BaseSerializer
    attributes *@@user_attributes
    has_one :bill_address
    has_one :ship_address
  end
end
