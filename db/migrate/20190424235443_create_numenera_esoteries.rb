class CreateNumeneraEsoteries < ActiveRecord::Migration[5.2]
  def change
    create_table :numenera_esoteries do |t|
      t.string :esotery_name, null: false, default: ''
      t.text :esotery_discription, null:false, default: ''
      t.string :esotery_cost, null: false, default: ''
      t.integer :numenera_character_id, null: false
      t.timestamps
    end
  end
end
