# Controller for processing operations with pet models.
class PetsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    Pet.transaction do
      pet = create_pet
      redirect_to action: 'show', id: pet.id
    end
  end

  def create_pet
    Pet.create_with_params! params, current_user
  end

  def index
  end

  def show
    @pet = Pet.find params[:id]
  end
end
