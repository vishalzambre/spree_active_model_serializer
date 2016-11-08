module Spree
  class OptionTypeSerializer < BaseSerializer
    attributes *@@option_type_attributes

    has_many :option_values, root: :option_values, serializer: OptionValueSerializer
  end
end
