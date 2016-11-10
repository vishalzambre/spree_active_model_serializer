module Spree
  class ZoneMemberSerializer < BaseSerializer
    attributes :id, :zoneable_type, :zoneable_id
  end
end
