# frozen_string_literal: true

class NumeneraCharacterTypesController < ApplicationController
  def all
    @numenera_character_type = numenera_character_type.all
  end
  def show
    @numenera_character_type = numenera_character_type.find(params[:id])
  end

  def new
    @numenera_character_type = NumeneraCharacterType.new
  end
end
