# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

page=Page.new
page.slug="about"
page.name="About"
page.content="this is the about page."
page.save!

page=Page.new
page.slug="contact"
page.name="Contact Us"
page.content="this is the contact page."
page.save!