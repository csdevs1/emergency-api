# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = State.create(name: "Vargas", image: "http://i.imgur.com/wcGgECn.jpg")
e1s1 = Service.create(name: "Ambulancias de Vargas", category: "Ambulancias", state_id: e1.id)
Telephone.create(number: "+5802123519966", service_id: e1s1.id)
# Hospitales Vargas
e1s2 = Service.create(name: "Vargas Salud", category: "Hospital", state_id: e1.id)
Telephone.create(number: "+5802123117894", service_id: e1s2.id)

e1s3 = Service.create(name: "Hospital Jose Maria Vargas", category: "Hospital", state_id: e1.id)
Telephone.create(number: "+5804263532053", service_id: e1s3.id)

e1s4 = Service.create(name: "Hospital Naval", category: "Hospital", state_id: e1.id)
Telephone.create(number: "+5804167901820", service_id: e1s4.id)
Telephone.create(number: "+5802123504090", service_id: e1s4.id)

e1s5 = Service.create(name: "Periferico de Pariata", category: "Hospital", state_id: e1.id)
Telephone.create(number: "+5802123519966", service_id: e1s5.id)

# Miranda
e2 = State.create(name: "Miranda", image: "http://i.imgur.com/Tnr6yNq.jpg")
s2 = Service.create(name: "Ambulancias de Miranda", category: "Ambulancias", state_id: e2.id)
Telephone.create(number: "+5802392553261", service_id: s2.id)
Telephone.create(number: "+5802392551678", service_id: s2.id)