require 'test_helper'

class Test10sControllerTest < ActionController::TestCase
  setup do
    @test10 = test10s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test10s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test10" do
    assert_difference('Test10.count') do
      post :create, test10: { name: @test10.name, no: @test10.no }
    end

    assert_redirected_to test10_path(assigns(:test10))
  end

  test "should show test10" do
    get :show, id: @test10
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test10
    assert_response :success
  end

  test "should update test10" do
    put :update, id: @test10, test10: { name: @test10.name, no: @test10.no }
    assert_redirected_to test10_path(assigns(:test10))
  end

  test "should destroy test10" do
    assert_difference('Test10.count', -1) do
      delete :destroy, id: @test10
    end

    assert_redirected_to test10s_path
  end
end
