class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :breeds, :name, unique: true
  end
end
