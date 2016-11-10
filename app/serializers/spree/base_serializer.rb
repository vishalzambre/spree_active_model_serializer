module Spree
  class BaseSerializer < ActiveModel::Serializer
    # embed :ids, include: true
    include Spree::Api::ApiHelpers

    def self._helper
      @_helper ||= Spree::Api::ApiHelpers
    end

    def _helper
      @_helper ||= Spree::Api::ApiHelpers
    end
  end
end
