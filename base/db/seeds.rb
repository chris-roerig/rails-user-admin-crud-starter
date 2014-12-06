# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_email = 'admin@demo.site'
admin_pw    = 'qweqweqwe'

Admin.create!(email: admin_email, password: admin_pw) unless Admin.find_by_email(admin_email)
