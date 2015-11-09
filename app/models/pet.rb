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

  def self.create_with_params!(params, user)
    pet = self.create! do |p|
      p.name = params[:name]
      p.breed_id = params[:breed_id]
      p.gender = params[:gender]
      p.owner = user
    end
    pet.create_birth_with_params! params
    pet
  end

  def create_birth_with_params!(params)
    Birth.create! do |b|
      b.child = self
      b.mother_id = params[:mother_id]
      b.father_id = params[:father_id]
    end
  end

  def self.where_can_be_father
    where gender: 0
  end

  def self.where_can_be_mother
    where gender: 1
  end
end
