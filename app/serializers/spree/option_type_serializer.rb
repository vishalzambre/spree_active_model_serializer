module Spree
  class OptionTypeSerializer < BaseSerializer
    attributes *_helper.option_type_attributes
    has_many :option_values, key: :option_values, serializer: OptionValueSerializer
  end
end
