FactoryGirl.define do 
  factory :belt do
    title "Rails"
    description "a funky framework" 

  end

  factory :challenge do
    sequence(:description) { |n| "Do Something Special \# #{n}"}
    sequence(:belt_id) {|n| n}
  end

  factory :user do
    sequence(:uid) { |n| 100+n}
    sequence(:secret) {|n| 2000+n}
    sequence(:token) {|n| 1000+n}
    sequence(:email) {|n| "someone@#{n}.com"}
  end
  
end