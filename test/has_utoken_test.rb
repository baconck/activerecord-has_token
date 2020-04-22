require 'test_helper'

class HasUtokenTest < Minitest::Test
  def setup 
    @post = Post.new
  end

  def test_token_values_are_generated_for_specified_attributes_and_persisted_on_save
    @post.save
    refute_nil @post.token
    refute_nil @post.slug
  end

  def test_length_is_used_for_token
    @post.save
    assert_equal @post.token.length, 6
    assert_equal @post.slug.length, 20
  end

  def test_regeneration_of_token
    @post.save
    old_token = @post.token
    old_slug = @post.slug
    @post.regenerate_token
    @post.regenerate_slug

    refute_equal @post.token, old_token
    refute_equal @post.slug, old_slug
  end

  def test_token_value_does_not_override_when_present
    @post.slug = "custom-slug"
    @post.save

    assert_equal @post.slug, "custom-slug"
  end
end
