module Spree
  module Api
    BaseController.class_eval do
      include Serializable
      include Requestable
    end
  end
end
