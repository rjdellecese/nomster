require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "add comment form adds comment to database" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)
    post :create, :place_id => place.id, :comment => { 
      :message => "message",
      :rating => "5_stars"
      }
    assert_equal 1, place.comments.count
    assert_redirected_to place_path(place.id)
  end
end
