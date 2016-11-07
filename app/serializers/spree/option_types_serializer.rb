module Spree
  class OptionTypesSerializer < BaseSerializer
    attributes *@@option_type_attributes

    has_many :option_values, root: :option_values, serializer: OptionValuesSerializer
  end
end
