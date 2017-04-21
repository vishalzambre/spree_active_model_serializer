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

      def modify_options(object, options)
        if object.is_a?(ActiveRecord::Relation)
          options[:root] = object.name.underscore.split('/')[-1].to_s.pluralize unless options[:root]
          options[:include_root] = true
        elsif object.is_a?(ActiveRecord::Base)
          options[:root] = object.class.model_name.to_s.underscore.split('/')[-1].to_s
          options[:include_root] = !!options[:include_root]
        end
        options.merge(pagination: meta_for(object), json: object)
      end

      def respond_with(object = nil, options = {})
        options.merge!(params)
        options = modify_options(object, options)
        render options
      end
    end
  end
end
