require 'active_model_serializers'
module ActiveModelSerializers
  module Adapter
    class SpreeAms < ActiveModelSerializers::Adapter::Json
      def serializable_hash(options = nil)
        options = serialization_options(options)
        if options[:include_root]
          serialized_hash = { root => serializable_array(options) }
        else
          serialized_hash = serializable_array(options)
        end
        serialized_hash[meta_key] = meta unless meta.blank?
        serialized_hash = serialized_hash.merge(options.fetch(:pagination, {}))
        self.class.transform_key_casing!(serialized_hash, instance_options)
      end

      def serializable_array(options)
        Attributes.new(serializer, instance_options).serializable_hash(options)
      end
    end
  end
end
