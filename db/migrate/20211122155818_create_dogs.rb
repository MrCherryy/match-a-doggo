class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :gender
      t.boolean :pedigree
      t.string :address
      t.boolean :matchable
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
