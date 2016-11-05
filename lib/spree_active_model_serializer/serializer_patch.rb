require 'active_model_serializers'
module ActiveModel
  ArraySerializer.class_eval do
    def include_meta(hash)
      # Override pagination meta links
      hash[meta_key] = @options[:meta] if @options.key?(:meta)
      hash.merge!(@options[:pagination]) if @options.key?(:pagination)
    end

    def as_json(*args)
      @options[:hash] = hash = {}
      @options[:unique_values] = {}

      if root = @options[:root]
        hash[root] = serializable_array
        include_meta hash
        hash.as_json
      else
        serializable_array.as_json
      end
    end
  end
end

module ActiveModel
  Serializer.class_eval do
    # Returns a json representation of the serializable
    # object including the root.
    def as_json(options={})
      options ||= {}
      if root = options.fetch(:root, @options.fetch(:root, root_name))
        @options[:hash] = hash = {}
        @options[:unique_values] = {}

        hash[root] = serializable_hash
        include_meta hash
        hash.as_json
      else
        serializable_hash.as_json
      end
    end
  end
end
