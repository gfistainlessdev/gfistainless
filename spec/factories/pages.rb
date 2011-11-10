# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
      name "MyString"
      content "MyText"
      slug "MyString"
    end
end