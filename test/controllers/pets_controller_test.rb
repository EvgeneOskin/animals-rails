require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  test 'should post create' do
    post :new
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
