class Birth < ActiveRecord::Base
  belongs_to :child
  belongs_to :father
  belongs_to :mother
end
