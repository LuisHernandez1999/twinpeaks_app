class CharacterService
  def self.create_character(params)
    character = Character.new(params)
    character.save
    character
  end

  def self.all_characters
    Character.all
  end
end
