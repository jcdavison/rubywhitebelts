FactoryGirl.define do 

  factory :belt do 
    title "Rails"
    description "a web framework"
  end

  factory :challenge do
    sequence(:description) { |n| "Do Something Special \# #{n}"}
  end

  factory :user do
    sequence(:uid) { |n| 100+n}
    sequence(:secret) {|n| 2000+n}
    sequence(:token) {|n| 1000+n}
    sequence(:email) {|n| "someone@#{n}.com"}
  end

  factory :completion do
    user_id 1
    belt_id 1
    challenge_id 1
  end
  
end