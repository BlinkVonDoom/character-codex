# frozen_string_literal: true

class CreateNumeneraCharacterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :numenera_character_skills do |t|
      t.string :numenera_skill, null: false, default: ''
      t.boolean :trained, null: false, default: false
      t.boolean :skilled, null: false, default: false
      t.integer :numenera_character_id, null: false

      t.timestamps
    end
  end
end
