require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    sign_in FactoryGirl.create(:admin)
  end

  test 'should post create' do
    post :create
    assert_response :success
  end

  test 'should get create' do
    get :new
    assert_response :success
  end

  test 'should get list' do
    get :index
    assert_response :success
  end

  test 'should get detail' do
    get :show, id: pets(:father).id
    assert_response :success
  end
end
