# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    date "2012-11-22 09:41:08"
    location "MyString"
    capacity 1
  end
end
