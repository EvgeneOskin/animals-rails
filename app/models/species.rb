class Species < ActiveRecord::Base
  enum gender: [:male, :female]
end
