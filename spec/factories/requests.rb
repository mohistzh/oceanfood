# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    title "MyString"
    applier "MyString"
    file "MyString"
    reason "MyText"
  end
end
