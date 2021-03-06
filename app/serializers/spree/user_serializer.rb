module Spree
  class UserSerializer < BaseSerializer
    attributes *_helper.user_attributes
    attributes :spree_api_key
    has_one :bill_address, key: :bill_address, serializer: AddressSerializer
    has_one :ship_address, key: :ship_address, serializer: AddressSerializer
  end
end
