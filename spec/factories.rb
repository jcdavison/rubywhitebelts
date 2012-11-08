FactoryGirl.define do 
  factory :belt do
    title "Rails"
    description "a funky framework" 

  end

  factory :challenge do
    sequence(:description) { |n| "Do Something Special \# #{n}"}
  end
  
end