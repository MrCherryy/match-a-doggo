class Match < ApplicationRecord
  belongs_to :matching_dog, class_name: 'Dog'
  belongs_to :matched_dog, class_name: 'Dog'

  STATUS = %w[pending accepted denied]
  validates :status, presence: true, inclusion: { in: STATUS }
  def pending?
    status
  end
end
