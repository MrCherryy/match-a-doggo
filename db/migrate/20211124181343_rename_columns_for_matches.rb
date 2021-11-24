class RenameColumnsForMatches < ActiveRecord::Migration[6.1]
  def change
    rename_column :matches, :male_dog_id, :matched_dog_id
    rename_column :matches, :female_dog_id, :matching_dog_id
  end
end
