require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized_rating method returns humanized rating" do
    assert_equal("one star", Comment.new(:rating => '1_star').humanized_rating)
  end

end
