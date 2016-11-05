require 'active_model_serializers'
module ActiveModel
  ArraySerializer.class_eval do
    def include_meta(hash)
      # Override pagination meta links
      hash[meta_key] = @options[:meta] if @options.key?(:meta)
      hash.merge!(@options[:pagination]) if @options.key?(:pagination)
    end
  end
end
