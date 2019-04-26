# frozen_string_literal: true

class NumeneraCharacter < ApplicationRecord
  belongs_to :user
  has_many :numenera_character_skills, dependent: :destroy
  has_many :numenera_esoteries, dependent: :destroy
end
