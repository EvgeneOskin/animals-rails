# User's pet with breed.
class Pet < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner, class_name: :User

  enum gender: [:male, :female]

  validates :name, presence: true
  validates :breed_id, presence: true
  validates :owner, presence: true
  validates :gender, presence: true

  def birth
    Birth.find_by child: self
  end

  def father
    birth.father if birth && birth.father
  end

  def mother
    birth.mother if birth && birth.mother
  end

  def children
    if gender == :female
      Birth.where mother: self
    else
      Birth.where father: self
    end
  end

  def self.where_can_be_father
    where gender: 0
  end

  def self.where_can_be_mother
    where gender: 1
  end
end
