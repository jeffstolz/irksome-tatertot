FactoryGirl.define do  factory :enrollment do
    
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
  factory :section do
    title "Sample section"
  end  
  factory :lesson do
    title "Sample lesson"
    subtitle "Sample subtitle"
  end  
   
end