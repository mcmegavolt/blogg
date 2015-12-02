module Blogg
  class Post < ActiveRecord::Base
    attr_accessible :text, :title, :subtitle, :image, :image_cache, :remove_image
    belongs_to :author, :class_name => "User"
    validates_presence_of :text, :title, :subtitle, :author

    mount_uploader :image, Blogg::ImageUploader

  end
end
