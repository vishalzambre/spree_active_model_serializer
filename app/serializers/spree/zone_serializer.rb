module Spree
  class ZoneSerializer < BaseSerializer
    attributes :id, :name, :description
    has_many :zone_members, serializer: ZoneMemberSerializer
  end
end
