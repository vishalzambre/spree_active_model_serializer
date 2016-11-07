module Spree
  class OrderCouldNotAppluCouponSerializer < BaseSerializer
    attributes :error

    def error
      @coupon_message
    end
  end
end
