module Spree
  class SourceSerializer < BaseSerializer
    attributes *@@payment_source_attributes
  end
end
