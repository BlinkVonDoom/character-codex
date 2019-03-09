# frozen_string_literal: true

class CreateNumeneraCharacterDescriptors < ActiveRecord::Migration[5.2]
  def change
    create_table :numenera_character_descriptors do |t|
      t.string :character_descriptor, null: false, default: ''
      t.timestamps
    end
  end
end
