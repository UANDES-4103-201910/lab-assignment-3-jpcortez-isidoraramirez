# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all
Ticket.destroy_all
Event.destroy_all
Venue.destroy_all

u1 = User.create(name: "Jorge",last_name: "Cortez", mail: "jc@.cl", phone: "1234", password: "1234", address: "jc 1234")
u2 = User.create(name: "Isidora",last_name: "Ramirez", mail: "ir@.cl", phone: "4321", password: "4321", address: "ir 4321")
u3 = User.create(name: "Cristobal",last_name: "Allende", mail: "ca@.cl", phone: "1111", password: "1111", address: "ca 1111")
u4 = User.create(name: "Felipe",last_name: "Lorca", mail: "fl@.cl", phone: "2222", password: "2222", address: "fl 2222")
u5 = User.create(name: "Claudio",last_name: "Alvarez", mail: "ca@.cl", phone: "3333", password: "3333", address: "ca 3333")

o1 = Order.create(total: 123 ,user: u1)
o2 = Order.create(total: 234 ,user: u2)
o3 = Order.create(total: 345 ,user: u3)
o4 = Order.create(total: 456 ,user: u4)
o5 = Order.create(total: 567 ,user: u5)

t1 = Ticket.create(price: 100,category: "Pacifico", order: o1)
t2 = Ticket.create(price: 20,category: "Andes", order: o1)
t3 = Ticket.create(price: 3,category: "Galeria", order: o1)

t4 = Ticket.create(price: 200,category: "Pacifico", order: o2)
t5 = Ticket.create(price: 30,category: "Andes", order: o2)
t6 = Ticket.create(price: 4,category: "Galeria", order: o2)

t7 = Ticket.create(price: 300,category: "Pacifico", order: o3)
t8 = Ticket.create(price: 40,category: "Andes", order: o3)
t9 = Ticket.create(price: 5,category: "Galeria", order: o3)

t10 = Ticket.create(price: 400,category: "Pacifico", order: o4)
t11 = Ticket.create(price: 50,category: "Andes", order: o4)
t12 = Ticket.create(price: 6,category: "Galeria", order: o4)

t13 = Ticket.create(price: 500,category: "Pacifico", order: o5)
t14 = Ticket.create(price: 60,category: "Andes", order: o5)
t15 = Ticket.create(price: 7,category: "Galeria", order: o5)

e1 = Event.create(name: "Lollapelusa", description: "shuer bacan", start_date: 20190320, ticket: t1)
e2 = Event.create(name: "Ultra-bailable", description: "puro tek", start_date: 20190401, ticket: t2)
e3 = Event.create(name: "Campos de helado", description: "quien sae", start_date: 20190502, ticket: t3)

t5.update(events: [e1])
t9.update(events: [e1])
t11.update(events: [e1])
t13.update(events: [e1])
t6.update(events: [e2])
t7.update(events: [e2])
t12.update(events: [e2])
t14.update(events: [e2])
t4.update(events: [e3])
t8.update(events: [e3])
t10.update(events: [e3])
t15.update(events: [e3])

v1 = Venue.create(name: "hola", address: "tyughrqjk", capacity: 100, event: e1)
v2 = Venue.create(name: "chao", address: "ureoij", capacity: 200, event: e2)
v3 = Venue.create(name: "lohvimo", address: "8euioqfk", capacity: 300, event: e3)
