puts "Destroying current data...."

Game.destroy_all
Skill.destroy_all

puts "Creating 10 skills..."

# wow = Game.create!(name: "World of Warcraft")
# sylvanas = Character.create!(name: "Sylvanas", game_id: wow.id)
thunder = Skill.create!(name: "Thunder")
fire = Skill.create!(name: "Fire Laser")
ice = Skill.create!(name: "Ice Storm")
earthquake = Skill.create!(name: "Earthquake")
heal = Skill.create!(name: "Heal")
flash = Skill.create!(name: "Flash")
explosion = Skill.create!(name: "Explosion")
poison = Skill.create!(name: "Poison Darts")
cure = Skill.create!(name: "Cure")
invisibility = Skill.create!(name: "Invisibility")
# Gain.create!(character_id: sylvanas.id, skill_id: thunder.id)

puts "Skills created! ✨"
