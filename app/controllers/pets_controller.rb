# Controller for processing operations with pet models.
class PetsController < ApplicationController
  before_filter :authenticate_user!

  def new
  end

  def create
    pet = Pet.new name: params[:name], species_id: params[:species_id], gender: params[:gender], owner: current_user
    redirect_to action: 'show', id: pet.id
  end

  def index
  end

  def show
  end
end
