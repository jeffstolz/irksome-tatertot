require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase
   test "section created" do
     user = FactoryGirl.create(:user)
     sign_in user
     course = FactoryGirl.create(:course, :user => user)
     section = FactoryGirl.create(:section, course: course)
     assert_response :success
   end
end
