require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
   test "course created" do
     sign_in simple_user
     course = Course.where(:user_id => simple_user.id, title: "Sample title").first
     assert !course
     post :create, :course => {:title => "Sample title", :description => "Sample description", :cost => 2.0}
     course = Course.where(:user_id => simple_user.id, title: "Sample title").first
     assert course
     assert_redirected_to instructor_course_path(course)
   end
end
