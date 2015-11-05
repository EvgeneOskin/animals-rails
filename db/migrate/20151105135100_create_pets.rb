class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.references :species, species: true, index: true, foreign_key: true, null: false
      t.references :owner, user: true, index: true, foreign_key: true, null: false
      t.integer :gender

      t.timestamps null: false
    end
  end
end
