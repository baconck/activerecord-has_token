## Installation

Add to your Gemfile:

```ruby 
gem 'activerecord-has_token'
```

Then you can add `has_token` to your model(s):

```ruby
class Post < ActiveRecord::Base
  has_token # defaults to 'token' attribute
  has_token token_attribute: :slug, length: 20 # (optional) you can specify an attribute and/or length 
end

post = Post.new
post.save
post.token # => "pX27z5"
post.slug # => "qa4d9kfn5ytqzxc0lpok"

post.regenerate_token # => "jd73k0"
post.regenerate_slug # => "7dk893kjdbt6dmnolps4"
```

## Tests

```shell
$ rake test
```
