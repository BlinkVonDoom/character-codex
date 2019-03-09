# frozen_string_literal: true

class NumeneraCharacter < ApplicationRecord
  belongs_to :user
  has_many :numenera_character_skills
end
