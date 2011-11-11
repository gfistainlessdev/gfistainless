# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

page=Page.find_or_initialize_by_slug("about")

page.name="About"
page.content="this is the about page."
page.save!

page=Page.find_or_initialize_by_slug("contact")

page.name="Contact Us"
page.content="this is the contact page."
page.save!

user=User.find_or_initialize_by_email("test@user.com")
user.password="123456"
user.password_confirmation="123456"
user.admin=true
user.save!
