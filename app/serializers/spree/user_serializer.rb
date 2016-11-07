module Spree
  class UserSerializer < BaseSerializer
    attributes *@@user_attributes
    attributes :spree_api_key
    has_one :bill_address
    has_one :ship_address
  end
end
