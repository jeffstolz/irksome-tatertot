require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
   test "course created" do
     user = FactoryGirl.create(:user)
     sign_in user
     course = FactoryGirl.create(:course, :user => user)
     assert_response :success
   end
end
