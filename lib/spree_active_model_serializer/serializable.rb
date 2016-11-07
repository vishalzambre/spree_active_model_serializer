module Spree
  module Api
    module Serializable

      def meta_for(object)
        meta = {}
        if object.respond_to?('total_pages')
          meta[:count] = object.count
          meta[:total_count]  = object.total_count
          meta[:current_page] = params[:page] ? params[:page].to_i : 1
          meta[:per_page] = params[:per_page] || Kaminari.config.default_per_page
          meta[:pages] = object.total_pages
        end
        meta
      end

      def respond_with(object = nil, options = {})
        if object.try(:errors).present?
          render json: { errors: object.errors.to_hash }, status: options[:status]
          return
        end
        serializer = {}
        serializer = { serializer: options[:serializer] } if options[:serializer]
        render({ json: object, pagination: meta_for(object), status: options[:status] }.merge(serializer))
      end
    end
  end
end
