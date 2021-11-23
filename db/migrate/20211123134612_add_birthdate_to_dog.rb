class AddBirthdateToDog < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :birthdate, :date
    remove_column :dogs, :age
  end
end
