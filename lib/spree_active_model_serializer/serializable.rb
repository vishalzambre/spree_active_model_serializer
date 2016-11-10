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
        options.merge!(params)
        render({ json: object, pagination: meta_for(object) }.merge(options))
      end
    end
  end
end
