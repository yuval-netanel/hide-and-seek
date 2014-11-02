# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

game = Game.create(name: "Where")
game.points.create(longtitude: 123.456, latitude: 456.789, question: "Where is the bonzzo?", order: 1)
game.points.create(longtitude: 134.451, latitude: 596.789, question: "Where is the Goor?", order: 2)
game.points.create(longtitude: 653.434, latitude: 836.789, question: "Where is the Chompi?", order: 3)
game.points.create(longtitude: 263.456, latitude: 456.789, question: "Where is the Aliza?", order: 4)