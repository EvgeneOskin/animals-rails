# Breed of pets.
class Breed < ActiveRecord::Base
  validates :name, presence: true
end
