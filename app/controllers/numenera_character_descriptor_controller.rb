# frozen_string_literal: true

class NumeneraCharacterDescriptorController < ApplicationController
  def all
    @numenera_character_descriptor = numenera_character_descriptor.all
    end

  def show
    @numenera_character_descriptor = numenera_character_descriptor.find(params[:id])
  end

  def new
    @numenera_character_descriptor = NumeneraCharacterDescriptor.new
  end
end
