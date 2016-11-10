module Spree
  class PromotionSerializer < BaseSerializer
    attributes *_helper.promotion_attributes
  end
end
