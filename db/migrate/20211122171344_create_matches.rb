class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :status
      t.references :male_dog, null: false, foreign_key: {to_table: :dogs}
      t.references :female_dog, null: false, foreign_key: {to_table: :dogs}
      t.timestamps
    end
  end
end
