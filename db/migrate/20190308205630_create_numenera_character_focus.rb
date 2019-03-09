# frozen_string_literal: true

class CreateNumeneraCharacterFocus < ActiveRecord::Migration[5.2]
  def change
    create_table :numenera_character_focus do |t|
      t.string :character_focus, null: false, default: ''
      t.timestamps
    end
  end
end
