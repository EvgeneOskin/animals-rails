class Pet < ActiveRecord::Base
  belongs_to :species
  belongs_to :owner
end
