require "blogg/engine"

module Blogg
  mattr_accessor :brand_text
  @@brand_text = "The Blogg"

  mattr_accessor :blog_title
  @@blog_title = "The Blogg"

  mattr_accessor :blog_description
  @@blog_description = "Simple blog in complicated world"

  mattr_accessor :footer_text
  @@footer_text = "Copyright © The Blogg #{Date.today.year}"

  def self.setup
    yield self
  end
end
