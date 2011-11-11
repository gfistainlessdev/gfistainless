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
#------Users
user=User.find_or_initialize_by_email("test@user.com")
user.password="123456"
user.password_confirmation="123456"
user.admin=true
user.save!
#------End users
#------Categories
top=Productcategory.find_or_initialize_by_name("TopLevel")
top.save!
firstchild=Productcategory.find_or_initialize_by_name("FirstChild")
firstchild.parent=top
firstchild.save!
secondchild=Productcategory.find_or_initialize_by_name("SecondChild")
secondchild.parent=top
secondchild.save!
