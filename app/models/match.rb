class Match < ApplicationRecord
  belongs_to :male_dog, class_name: 'Dog', foreign_key: 'male_dog_id', required: true
  belongs_to :female_dog, class_name: 'Dog', foreign_key: 'female_dog_id', required: true
end
