# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


b = Doctor.create(name:"bob", specialty: "medicine", is_licensed: true)
a = Doctor.create(name:"alice", specialty: "pediatrician", is_licensed: true)
e = Doctor.create(name:"eve", specialty: "ducks", is_licensed: false)

p1 = Patient.create(name:"susan", age: 21, doctor_id: 1)
p2 = Patient.create(name:"sus", age: 42, doctor_id: 2)
p3 = Patient.create(name:"san", age: 50, doctor_id: 3)

