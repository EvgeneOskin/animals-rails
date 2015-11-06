# Model for generate genealogy of pet.
class Birth < ActiveRecord::Base
  belongs_to :child, class_name: :Pet
  belongs_to :father, class_name: :Pet
  belongs_to :mother, class_name: :Pet
end
