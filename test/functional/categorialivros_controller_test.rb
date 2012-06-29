require 'test_helper'

class CategorialivrosControllerTest < ActionController::TestCase
  setup do
    @categorialivro = categorialivros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorialivros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorialivro" do
    assert_difference('Categorialivro.count') do
      post :create, :categorialivro => { :descricao => @categorialivro.descricao }
    end

    assert_redirected_to categorialivro_path(assigns(:categorialivro))
  end

  test "should show categorialivro" do
    get :show, :id => @categorialivro
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @categorialivro
    assert_response :success
  end

  test "should update categorialivro" do
    put :update, :id => @categorialivro, :categorialivro => { :descricao => @categorialivro.descricao }
    assert_redirected_to categorialivro_path(assigns(:categorialivro))
  end

  test "should destroy categorialivro" do
    assert_difference('Categorialivro.count', -1) do
      delete :destroy, :id => @categorialivro
    end

    assert_redirected_to categorialivros_path
  end
end
