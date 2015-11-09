class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.references :breed, breed: true, index: true, null: false
      t.references :owner, user: true, index: true, null: false
      t.integer :gender, null: false

      t.timestamps null: false
    end
  end
end
