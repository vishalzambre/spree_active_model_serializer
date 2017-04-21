module SpreeActiveModelSerializer
  class Engine < Rails::Engine
    require 'spree/core'
    require 'active_model_serializers'
    isolate_namespace Spree
    engine_name 'spree_active_model_serializer'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.autoload_paths << File.expand_path('../../app/**/*.rb', __FILE__)

    config.to_prepare &method(:activate).to_proc
    ActiveModelSerializers.config.adapter = ActiveModelSerializers::Adapter::SpreeAms
  end
end
