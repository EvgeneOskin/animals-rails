# Controller for processing operations with pet models.
class PetsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    Pet.transaction do
      pet = create_pet
      create_birth(pet)
      redirect_to action: 'show', id: pet.id
    end
  end

  def create_pet
    Pet.create! do |p|
      p.name = params[:name]
      p.breed_id = params[:breed_id]
      p.gender = params[:gender]
      p.owner = current_user
    end
  end

  def create_birth(pet)
    Birth.create! do |b|
      b.child = pet
      b.mother_id = params[:mother_id]
      b.father_id = params[:father_id]
    end
  end

  def index
  end

  def show
    @pet = Pet.find params[:id]
  end
end
