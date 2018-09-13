# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create first_name:"Chabby",last_name:"Whale",email:"chabby@whale.ninja",password:"whale"

Project.destroy_all
p1 = Project.create name:"Splash Project"

u1.projects << p1

Vendor.destroy_all
v1 = Vendor.create name:"Wasteview"
v2 = Vendor.create name:"Vague Monologue"

Invoice.destroy_all
in1 = Invoice.create invoice_number:"INV-001", status:1, amount:789.35
in2 = Invoice.create invoice_number:"2758375", status:3, amount:13200.00

in1.vendor = v1
in2.vendor = v2

in1.project = p1
in2.project = p1
in1.save
in2.save



puts "****** #{User.count} user created!"
puts "****** #{Project.count} project created!"
puts "****** #{Vendor.count} vendor created!"
puts "****** #{Invoice.count} invoice created!"