# The Blogg

> This gem not ready yet! I'm in progress now, you are welcome to contribute

About gem: **Simple design ready blog for your rails application**

**Add to your Gemfile:**

```ruby
gem 'blogg'
```

**create 'config/initializers/blogg.rb' and set class with devise authorization and other settings:**

```ruby
require 'blogg'
Blogg.setup do |config|
  # Your Class with devise authorization, default is "User"
  # config.user_class = "Admin"

  # It shows at the top navbar
  # config.brand_text = "Blogg"

  # Your awesome blog name
  # config.blog_title = "The Blogg"

  # Your awesome blog description
  # config.blog_description = "Awesome Blog for awesome People"

  # Footer text, can contain html and #{ruby code}
  # config.footer_text = "Copyright © My Blog #{Date.today.year}""

  # Showing social icon in footer, false by default
  # Icons have a blank link and not customizable yet
  # config.show_social = true
end
```

You need to define **to_s** method in class set in ```config.user_class``` to return correct author name
```ruby
def to_s
  name
  # email
  # whatever
end
```

**Copy and migrations**

```ruby
rake blogg:install:migrations

rake db:migrate
```

English, Russian and Ukrainian localizations are supported (partially for Russian and Ukrainian, still in progress)

Blogg use https://github.com/norman/friendly_id for generating pretty urls

## TODO:

* tests
* internationalization (in progress)
* pagination
* frontend blog settings
* static pages (about, contacts, etc.)
* auto seo optimization
  * meta tags for facebook, google, twitter, etc.
  * title, description
* disqus comments (optionable)
* socials link in the footer (facebook, twitter...)
* social sharing for posts
* markdown editor for post body text
