# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Nodo.create name: "nodo_1", distance: 0
(2..6).each do |nodo|
  Nodo.create name: "nodo_#{nodo}", distance: rand(2..20)
end

LinkNodo.create nodoA: 1, nodoB: 2, distance: rand(2..20)
LinkNodo.create nodoA: 1, nodoB: 3, distance: rand(2..20)
LinkNodo.create nodoA: 1, nodoB: 6, distance: rand(2..20)
LinkNodo.create nodoA: 2, nodoB: 3, distance: rand(2..20)
LinkNodo.create nodoA: 2, nodoB: 4, distance: rand(2..20)
LinkNodo.create nodoA: 3, nodoB: 6, distance: rand(2..20)
LinkNodo.create nodoA: 3, nodoB: 4, distance: rand(2..20)
LinkNodo.create nodoA: 4, nodoB: 5, distance: rand(2..20)
LinkNodo.create nodoA: 6, nodoB: 5, distance: rand(2..20)

