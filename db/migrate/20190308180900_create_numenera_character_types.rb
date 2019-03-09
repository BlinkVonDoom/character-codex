# frozen_string_literal: true

class CreateNumeneraCharacterTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :numenera_character_types do |t|
      t.string :character_type, null: false, default: ''
      t.timestamps
    end
  end
end
