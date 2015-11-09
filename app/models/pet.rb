# User's pet with breed.
class Pet < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner, class_name: :User

  enum gender: [:male, :female]

  validates :name, presence: true
  validates :breed_id, presence: true
  validates :owner, presence: true
  validates :gender, presence: true

  def owner_email
    owner.email
  end

  def birth
    Birth.find_by child: self
  end

  def father
    birth.father if birth && birth.father
  end

  def mother
    birth.mother if birth && birth.mother
  end

  def father_id
    father.id if father
  end

  def mother_id
    mother.id if mother
  end

  def children
    if gender == 'male'
      births = Birth.where father: self
    else
      births = Birth.where mother: self
    end
    births.includes(:child).map(&:child)
  end

  def self.where_can_be_father
    where gender: 0
  end

  def self.where_can_be_mother
    where gender: 1
  end
end
