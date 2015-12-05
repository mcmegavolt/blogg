require "blogg/engine"

module Blogg

  mattr_accessor :user_class
  @@user_class = "User"

  mattr_accessor :brand_text
  @@brand_text = "Blogg"

  mattr_accessor :blog_title
  @@blog_title = "The Blogg"

  mattr_accessor :blog_description
  @@blog_description = "Simple blog in complicated world"

  mattr_accessor :footer_text
  @@footer_text = "Copyright © The Blogg #{Date.today.year}"

  mattr_accessor :show_social
  @@show_social = false

  def self.setup
    yield self
  end
end
