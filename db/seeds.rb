# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#------Pages
page=Page.find_or_initialize_by_slug("about")
page.name="About"
page.content="this is the about page."
page.save!

page=Page.find_or_initialize_by_slug("contact")
page.name="Contact Us"
page.content="this is the contact page."
page.save!
#------End Pages
mfr=Manufacturer.find_or_initialize_by_name("Acme")
mfr.url="http://www.acme.com"
mfr.save!
#------Users
user=User.find_or_initialize_by_email("test@user.com")
user.password="123456"
user.password_confirmation="123456"
user.admin=true
user.save!
#---Categories2
def process_category_node(node, parent = nil)
  name, children = case node
                  when Hash
                    [node.keys.first, node.values.first]
                  else
                    [node, []]
                  end
  cat = if parent
          Productcategory.children_of(parent.id).find_or_create_by_name(name)
        else
          Productcategory.find_or_create_by_name(name)
        end
  children.each {|c| process_category_node(c,cat)}
end
Rails.root.join('db', 'categories.yml').open do |file|
  categories_hash= YAML.load(file)
  categories_hash.each {|c| process_category_node(c)}
end
#--------end Categories2

#--------Products
i=0
while i < 100
    i += 1
    p=Product.find_or_initialize_by_name("Itemnumber" + i.to_s)

    p.productcategory=Productcategory.random
    p.save!
  end
#--------End Products