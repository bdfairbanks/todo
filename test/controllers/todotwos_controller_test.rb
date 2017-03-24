require 'test_helper'

class TodotwosControllerTest < ActionController::TestCase
  setup do
    @todotwo = todotwos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todotwos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todotwo" do
    assert_difference('Todotwo.count') do
      post :create, todotwo: { task: @todotwo.task, whendue: @todotwo.whendue }
    end

    assert_redirected_to todotwo_path(assigns(:todotwo))
  end

  test "should show todotwo" do
    get :show, id: @todotwo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todotwo
    assert_response :success
  end

  test "should update todotwo" do
    patch :update, id: @todotwo, todotwo: { task: @todotwo.task, whendue: @todotwo.whendue }
    assert_redirected_to todotwo_path(assigns(:todotwo))
  end

  test "should destroy todotwo" do
    assert_difference('Todotwo.count', -1) do
      delete :destroy, id: @todotwo
    end

    assert_redirected_to todotwos_path
  end
end
