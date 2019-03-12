# frozen_string_literal: true

class NumeneraCharacterSkillsController < ApplicationController
  before_action :current_numenera_character_skill, only: %i[show edit update destroy]
  def show; end

  def edit; end

  def update
    @numenera_character_skill.update(numenera_character_skill_params)

    redirect_to show_numenera_character_path(@numenera_character_skill.numenera_character_id)
  end

  def new
    @numenera_character_skill = NumeneraCharacterSkill.new
  end

  def create
    @numenera_character_skill = NumeneraCharacterSkill.new(numenera_character_skill_params)

    @numenera_character_skill.save
    redirect_to show_numenera_character_path(@numenera_character_skill.numenera_character_id)
  end

  def destroy
    @numenera_character_skill.destroy
  end

  private

  def numenera_character_skill_params
    params.require(:numenera_character_skill).permit(:numenera_skill, :trained, :skilled, :numenera_character_id)
  end

  def current_numenera_character_skill
    @numenera_character_skill = NumeneraCharacterSkill.find(params[:id])
  end
end
