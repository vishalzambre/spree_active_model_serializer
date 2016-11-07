module Spree
  class AdjustmentSerializer < BaseSerializer
    attributes :id, :source_type, :source_id, :adjustable_type, :adjustable_id,
               :amount, :label, :mandatory, :eligible,  :created_at, :updated_at
    attributes :display_amount
  end
end
