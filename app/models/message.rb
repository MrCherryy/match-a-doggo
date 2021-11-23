class Message < ApplicationRecord
  belongs_to :dog_id
  belongs_to :match_id

  validates :content, presence: true
end
