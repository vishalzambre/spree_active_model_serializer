module Spree
  class OptionValuesSerializer < BaseSerializer
    attributes :id, :name, :presentation, :position
    has_one :option_type, embed: :id, serializer: OptionTypesSerializer
  end
end
