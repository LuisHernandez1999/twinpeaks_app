class CharactersController < ApplicationController
  def index
    @characters = CharacterService.all_characters
  end

  def new
    @character = Character.new
  end

  def create
    @character = CharacterService.create_character(character_params)
    if @character.persisted?
      redirect_to characters_path, notice: "Personagem cadastrado com sucesso!"
    else
      render :new
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :description, :actor)
  end
end
