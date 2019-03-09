# frozen_string_literal: true

class NumeneraCharacterFocusController < ApplicationController
  def all
    @numenera_character_focus = numenera_character_focus.all
    end

  def show
    @numenera_character_focus = numenera_character_focus.find(params[:id])
  end

  def new
    @numenera_character_focus = NumeneraCharacterFocus.new
  end
end
