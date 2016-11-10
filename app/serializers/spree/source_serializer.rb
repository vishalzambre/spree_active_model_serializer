module Spree
  class SourceSerializer < BaseSerializer
    attributes *_helper.payment_source_attributes
  end
end
