require 'active_model_serializers'
module ActiveModel
  ArraySerializer.class_eval do
    def include_meta(hash)
      # Override pagination meta links
      hash.merge!(@options[:meta]) if @options.key?(:meta)
    end
  end
end
