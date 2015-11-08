class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :species, :name, unique: true
  end
end
