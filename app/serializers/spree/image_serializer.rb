module Spree
  class ImageSerializer < BaseSerializer
    attributes  *_helper.image_attributes
    attributes :viewable_type, :viewable_id

    Spree::Image.attachment_definitions[:attachment][:styles].each do |k,v|
      attributes "#{k}_url".to_sym
      define_method "#{k}_url" do
        object.attachment.url(k)
      end
    end
  end
end
