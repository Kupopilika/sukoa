# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Game.create(name: "Fléchettes !", goal_score: 501, number: 3)
Player.create(name: "Sarah Connor", game_id: 1)
Player.create(name: "Karma", game_id: 1)
Player.create(name: "Loukoum", game_id: 1)
