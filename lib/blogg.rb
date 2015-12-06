require "blogg/engine"

module Blogg
  mattr_accessor :user_class
  @@user_class = "User"

  mattr_accessor :brand_text
  @@brand_text = "Blogg"

  mattr_accessor :brand_url
  @brand_url = ''

  mattr_accessor :blog_title
  @@blog_title = "The Blogg"

  mattr_accessor :blog_description
  @@blog_description = "Simple blog in complicated world"

  mattr_accessor :footer_text
  @@footer_text = "Copyright © The Blogg #{Date.today.year}"

  mattr_accessor :show_social
  @@show_social = true

  # Social icons set. You can use any key names here listed on http://fontawesome.io/icons/#brand
  mattr_accessor :social_links
  @@social_links = {}

  # Full url of google+ profile page for author/publisher meta_tag
  mattr_accessor :google_plus_profile
  @@google_plus_profile = ''

  # Enable Disqus comments for your blog posts
  mattr_accessor :disqus
  @@disqus = false

  # Your unique Disqus Url, eg. 'awesomeblog.disqus.com'
  mattr_accessor :disqus_url
  @@disqus_url = ''

  def self.setup
    yield self
  end
end
