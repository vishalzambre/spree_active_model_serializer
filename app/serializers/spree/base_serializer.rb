module Spree
  class BaseSerializer < ActiveModel::Serializer
    # embed :ids, include: true
    include Spree::Api::ApiHelpers
  end
end
