# The Blogg

## Design ready SEO optimized customizable blog engine for your rails application

> Tested on Rails 3.2 (Rails 4 version is coming ~~soon~~)

You know how to make this gem better? Want to improve some feature or add a new one? Found an issue? Feel free to contribute or create an issue. You are welcome!

---

### Add to your Gemfile

```ruby
gem 'blogg'
```

### Create ```config/initializers/blogg.rb``` and set class with devise authorization and other settings:

```ruby
require 'blogg'
Blogg.setup do |config|
  # Your Class with devise authorization, default is "User"
  # config.user_class = "Admin"

  # It shows at the top navbar
  # config.brand_text = "Blogg"

  # Brand link url. Default is root of main application
  # config.brand_url = "/mylink"

  # Your awesome blog name
  # config.blog_title = "The Blogg"

  # Your awesome blog description
  # config.blog_description = "Awesome Blog for awesome People"

  # Footer text, can contain html and #{ruby code}
  # config.footer_text = "Copyright © My Blog #{Date.today.year}""

  # Show the author (user) in posts. Default is true
  # config.show_author = true

  # Showing social icons in footer, false by default
  # Icons have a blank link and not customizable yet
  # config.show_social = true

  # Social icons set. You can use any key names here listed on http://fontawesome.io/icons/#brand
  # config.social_links = {
  #   facebook: '#url',
  #   github: '#url',
  #   twitter: '#url'
  # }

  # Enable disqus comments for your blog posts and set your Disqus Url, false by default
  # config.disqus = true
  # config.disqus_url = 'myblog.disqus.com'

end
```

### Define ```to_s``` method in class set in config.user_class to return correct author name
```ruby
def to_s
  name
  # email
  # whatever
end
```

### Install migrations

```ruby
rake blogg:install:migrations

rake db:migrate
```

### Other staff out of the box

- Design ready. With heading image and autohiding top navbar
- https://github.com/norman/friendly_id for generating pretty urls
- Markdown for post body text (no WYSWYG editor)
- English localization are supported. Russian and Ukrainian in progress
- SEO optimized. Auto generating meta tags (OpenGraph, publisher, author), page title and description
- "Static page" option to handle static pages, eg. "About", "Contacts"  
- Disqus comments (option)

### TODO:

* tests
* auto seo optimization (improving)
* Russian and Ukrainian localization (in progress)
* social sharing
* pagination
* frontend blog settings
