FactoryGirl.define do  factory :section do
    
  end

  factory :user do
    email "jstolz123@gmail.com"
    password "noneyabusiness"
  end 
  factory :course do
    title "Sample course"
    description "Sample description"
    cost 2.0
  end  
end