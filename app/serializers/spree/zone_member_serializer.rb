module Spree
  class ZoneMemberSerializer < BaseSerializer
    attributes :id, :name, :zoneable_type, :zoneable_id
  end
end
