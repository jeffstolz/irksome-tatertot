require 'test_helper'

class Instructor::LessonsControllerTest < ActionController::TestCase
   test "lesson created" do
     user = FactoryGirl.create(:user)
     sign_in user
     course = FactoryGirl.create(:course, :user => user)
     section = FactoryGirl.create(:section, course: course)
     lesson = FactoryGirl.create(:lesson, section: section)
     assert_response :success
   end
end
