require "babosa"

module Blogg
  class Post < ActiveRecord::Base

    # Use FriendlyId for pretty urls
    extend FriendlyId
    friendly_id :title, use: :slugged

    attr_accessible :text, :title, :subtitle, :image, :image_cache, :remove_image, :static
    belongs_to :author, :class_name => Blogg.user_class
    validates_presence_of :text, :title, :subtitle, :author

    scope :static, where(static: true)
    scope :articles, where(static: false)

    mount_uploader :image, Blogg::ImageUploader

    # Override FriendlyId method to transliterate slug with Babosa gem
    def normalize_friendly_id(value)
      case I18n.locale
        when :ru, :uk
          value.to_s.to_slug.normalize(transliterations: :russian).to_s
        else
          value.to_s.to_slug.normalize.to_s
      end
    end

    def is_static?
      static
    end

    def is_article?
      !static
    end

    def next
      self.class.articles.where("id > ?", id).first
    end

    def prev
      self.class.articles.where("id < ?", id).last
    end

  end
end
