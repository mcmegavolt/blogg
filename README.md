# Blogg

> This gem not ready yet! I'm in progress now, you are welcome to contribute

About gem: **Simple design ready blog for your rails application**

**Add to your Gemfile:**

```ruby
gem 'blogg'
```

**create 'config/initializers/blogg.rb' and set layout:**

```ruby
Blogg.layout = 'application'
```

**Copy and migrations**

```ruby
rake blogg:install:migrations

rake db:migrate
```

## TODO:

* internationalization
* static pages (about, contacts, etc.)
* friendly post ids
* blog settings
* auto seo optimization
  * meta tags for facebook, google, twitter, etc.
  * title, description
* disqus comments
