# User's pet with species.
class Pet < ActiveRecord::Base
  belongs_to :species
  belongs_to :owner, class_name: :User

  enum gender: [:male, :female]

  validates :name, presence: true
  validates :species_id, presence: true
  validates :owner, presence: true
  validates :gender, presence: true
end
