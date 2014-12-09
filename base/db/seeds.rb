# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

domain      = 'demo.site'
admin_email = "admin@#{domain}"
user_email  = "user@#{domain}"
demo_pw     = 12345678

admin = Admin.find_or_create_by(email: admin_email) do |admin|
  admin.password = demo_pw
end

user = User.find_or_create_by(email: user_email) do |user|
  user.password = demo_pw
end

puts "#{admin.email} : #{demo_pw}"
puts "#{user.email} : #{demo_pw}"

