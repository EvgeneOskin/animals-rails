# Species of pets.
class Species < ActiveRecord::Base
  validates :name, presence: true
end
