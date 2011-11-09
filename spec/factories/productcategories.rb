# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define(:productcategory, class: Productcategory) do |c|
  c.sequence(:name) { |n| Faker::Lorem.words(rand(3) + 1).join(' ') + n.to_s}
end

Factory.define :product_category_with_parent, parent: :productcategory do |f|
  f.parent {Factory.create(:productcategory)}
end