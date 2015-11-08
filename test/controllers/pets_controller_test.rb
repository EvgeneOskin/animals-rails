require 'test_helper'

class PetControllerTest < ActionController::TestCase
  test 'should post create' do
    post :create
    assert_response :success
  end

  test 'should get create' do
    get :create
    assert_response :success
  end

  test 'should get list' do
    get :list
    assert_response :success
  end

  test 'should get detail' do
    get :detail
    assert_response :success
  end
end
