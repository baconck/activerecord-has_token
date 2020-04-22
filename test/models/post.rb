class Post < ActiveRecord::Base
  has_token
  has_token token_attribute: :slug, length: 20
end
