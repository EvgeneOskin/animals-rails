# User's pet with species.
class Pet < ActiveRecord::Base
  belongs_to :species
  belongs_to :owner, class_name: :User

  enum gender: [:male, :female]
end
