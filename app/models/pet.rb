# User's pet with breed.
class Pet < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner, class_name: :User

  enum gender: [:male, :female]

  validates :name, presence: true
  validates :breed_id, presence: true
  validates :owner, presence: true
  validates :gender, presence: true
end
