# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def numenera_character_types
  character_types = %w[Glaive Nano Jack]

  character_types.each do |character|
    NumeneraCharacterType.create(character_type: character)
  end
end

def numenera_character_descriptors
  character_descriptors = ['Charming', 'Clever', 'Graceful', 'Intelligent', 'Learned', 'Mystical/Mechanical', 'Rugged', 'Stealthy', 'Strong', 'Strong Willed', 'Swift', 'Tough']

  character_descriptors.each do |character|
    NumeneraCharacterDescriptor.create(character_descriptor: character)
  end
end

def numenera_character_focus
  character_foci = ['Bears a Halo of Fire', 'Carries a Quiver', 'Commands Mental Powers', 'Controls Beasts', 'Controls Gravity', 'Crafts Illusions', 'Crafts Unique Objects', 'Employs Magnetism', 'Entertains', 'Exists Partially Out of Phase', 'Explores Dark Places', 'Fights with Panache', 'Focuses on Mind Over Matter', 'Fuses Flesh and Steel', 'Howls at the Moon', 'Hunts with Great Skill', 'Leads', 'Lives in the Wilderness', 'Masters Defense', 'Masters Weaponry', 'Murders', 'Rages', 'Rides the Lightning', 'Talks to Machines', 'Wears a Sheen of Ice', 'Wields Power with Precision', 'Wields Two Weapons at Once', 'Works Miracles', 'Works the Back Alleys']

  character_foci.each do |character|
    NumeneraCharacterFocus.create(character_focus: character)
  end
end

numenera_character_types
numenera_character_descriptors
numenera_character_focus
