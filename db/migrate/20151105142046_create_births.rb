class CreateBirths < ActiveRecord::Migration
  def change
    create_table :births do |t|
      t.references :child, pet: true, index: true, unique: true, null: false
      t.references :father, pet: true, index: true, null: false
      t.references :mother, pet: true, index: true, null: false
      t.string :place

      t.timestamps null: false
    end
  end
end
