# frozen_string_literal: true

class NumeneraCharactersController < ApplicationController
  before_action :current_numenera_character, only: %i[show edit update destroy]
  before_action :require_permission, only: %i[edit destroy]

  def index
    @numenera_characters = NumeneraCharacter.all
  end

  def show; end

  def edit
    if current_user.id != @numenera_character.user_id
      redirect_to root_path, notice: 'you cant access that'
    end
  end

  def update
    @numenera_character.update(numenera_character_params)

    redirect_to show_numenera_character_path(@numenera_character.id)
  end

  def new
    @numenera_character = NumeneraCharacter.new
  end

  def create
    @numenera_character = NumeneraCharacter.new(numenera_character_params)

    if @numenera_character.save
      redirect_to show_numenera_character_path(@numenera_character.id)
    else
      redirect_to root_path, alert: 'something went wrong'
    end
  end

  def destroy
    @numenera_character.destroy
    redirect_to root_path
  end

  private

  def numenera_character_params
    params.require(:numenera_character).permit(:character_name, :character_focus, :character_descriptor, :character_type, :tier, :effort, :might_pool, :speed_pool, :intellect_pool, :might_edge, :speed_edge, :intellect_edge).merge(user_id: current_user.id)
  end

  def current_numenera_character
    @numenera_character = NumeneraCharacter.find(params[:id])
  end

  def require_permission
    if current_user.id != NumeneraCharacter.find(params[:id]).user_id
      redirect_to root_path
    end
  end
end
