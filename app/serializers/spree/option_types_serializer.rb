module Spree
  class OptionTypesSerializer < BaseSerializer
    attributes :id, :name, :presentation, :position
    has_many :option_values, root: :option_values, serializer: OptionValuesSerializer
  end
end
