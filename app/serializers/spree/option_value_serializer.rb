module Spree
  class OptionValueSerializer < BaseSerializer
    attributes *_helper.option_value_attributes
  end
end
