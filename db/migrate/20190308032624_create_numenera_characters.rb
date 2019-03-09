# frozen_string_literal: true

class CreateNumeneraCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :numenera_characters do |t|
      t.string :character_name, null: false, default: ''
      t.string :character_descriptor, null: false, default: ''
      t.string :character_type
      t.string :character_focus, null: false, default: ''

      t.integer :tier, null: false, default: 1
      t.integer :effort, null: false, default: 1
      t.integer :xp, null: false, default: 0

      t.integer :might_pool, null: false, default: 0
      t.integer :speed_pool, null: false, default: 0
      t.integer :intellect_pool, null: false, default: 0

      t.integer :user_id

      t.timestamps
    end
  end
end
