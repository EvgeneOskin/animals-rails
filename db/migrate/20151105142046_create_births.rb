class CreateBirths < ActiveRecord::Migration
  def change
    create_table :births do |t|
      t.references :child, pet: true, index: true, foreign_key: true, unique: true
      t.references :father, pet: true, index: true, foreign_key: true
      t.references :mother, pet: true, index: true, foreign_key: true
      t.string :place

      t.timestamps null: false
    end
  end
end
