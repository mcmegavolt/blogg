# Blogg

> This gem not working yet! I'm in progress now, you are welcome to contribute

About gem: Very simple blog for your rails application

**Add to your Gemfile:**

```ruby
gem 'blogg'
```

**create 'config/initializers/blogg.rb' and set layout:**

```ruby
Blogg.layout = 'application'
```

**Copy migrations**

```ruby
rake blogg:install:migrations
```

and run migration

```ruby
rake db:migrate
```
