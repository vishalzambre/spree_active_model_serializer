module Spree
  module Api
    CheckoutsController.class_eval do
      def next
        load_order(true)
        authorize! :update, @order, order_token
        @order.next!
        respond_with(@order, default_template: 'spree/api/orders/show', status: 200, serializer: Spree::OrderShowSerializer)
      rescue StateMachines::InvalidTransition
        respond_with(@order, default_template: 'spree/api/orders/could_not_transition', status: 422, serializer: OrderCouldNotTransitionSerializer)
      end

      def advance
        load_order(true)
        authorize! :update, @order, order_token
        while @order.next; end
        respond_with(@order, default_template: 'spree/api/orders/show', status: 200, serializer: Spree::OrderShowSerializer)
      end

      def update
        load_order(true)
        authorize! :update, @order, order_token

        if @order.update_from_params(params, permitted_checkout_attributes, request.headers.env)
          if current_api_user.has_spree_role?('admin') && user_id.present?
            @order.associate_user!(Spree.user_class.find(user_id))
          end

          return if after_update_attributes

          if @order.completed? || @order.next
            state_callback(:after)
            respond_with(@order, default_template: 'spree/api/orders/show', serializer: Spree::OrderShowSerializer)
          else
            respond_with(@order, default_template: 'spree/api/orders/could_not_transition', status: 422, serializer: OrderCouldNotTransitionSerializer)
          end
        else
          invalid_resource!(@order)
        end
      end

      private

      def raise_insufficient_quantity
        respond_with(@order, default_template: 'spree/api/orders/insufficient_quantity', serializer: OrderInsufficientQuantitySerializer)
      end

      def after_update_attributes
        if nested_params && nested_params[:coupon_code].present?
          handler = Spree::PromotionHandler::Coupon.new(@order).apply

          if handler.error.present?
            @coupon_message = handler.error
            respond_with(@order, default_template: 'spree/api/orders/could_not_apply_coupon', serializer: OrderCouldNotAppluCouponSerializer)
            return true
          end
        end
        false
      end
    end
  end
end
