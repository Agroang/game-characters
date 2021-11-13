puts "Trying to destroy current data...."

Game.destroy_all
Skill.destroy_all

puts "Trying to Create 1 instance of each"

wow = Game.create!(name: "World of Warcraft")
sylvanas = Character.create!(name: "Sylvanas", game_id: wow.id)
thunder = Skill.create!(name: "Thunder")
Gain.create!(character_id: sylvanas.id, skill_id: thunder.id)

puts "1 Game, Character, Skill and Gain were created ✨"
