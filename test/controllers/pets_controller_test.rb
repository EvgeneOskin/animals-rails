require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  def setup
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  test 'should post create and raise invalid' do
    error_message = "Validation failed: Name can't be blank,"\
      " Breed can't be blank,"\
      " Gender can't be blank"
    assert_raise ActiveRecord::RecordInvalid, error_message do
      post :create
    end
  end

  test 'should post create' do
    post :create, name: 'test', gender: 'male', breed_id: breeds(:dog).id
    assert_response :redirect
    new_pet = Pet.find_by name: 'test'
    assert_redirected_to "/pets/#{new_pet.id}"
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get show for father' do
    get :show, id: pets(:father).id
    assert_response :success
  end

  test 'should get show for mother' do
    get :show, id: pets(:mother).id
    assert_response :success
  end

  test 'should get show for both parents' do
    get :show, id: pets(:full_family_dog).id
    assert_response :success
  end

  test 'should get show for single parent' do
    get :show, id: pets(:single_parent_dog).id
    assert_response :success
  end
end
