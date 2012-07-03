require 'test_helper'

class LocacaosControllerTest < ActionController::TestCase
  setup do
    @locacao = locacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locacao" do
    assert_difference('Locacao.count') do
      post :create, :locacao => { :data_devolucao => @locacao.data_devolucao, :data_locacao => @locacao.data_locacao, :data_prevista_dev => @locacao.data_prevista_dev, :multa => @locacao.multa }
    end

    assert_redirected_to locacao_path(assigns(:locacao))
  end

  test "should show locacao" do
    get :show, :id => @locacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @locacao
    assert_response :success
  end

  test "should update locacao" do
    put :update, :id => @locacao, :locacao => { :data_devolucao => @locacao.data_devolucao, :data_locacao => @locacao.data_locacao, :data_prevista_dev => @locacao.data_prevista_dev, :multa => @locacao.multa }
    assert_redirected_to locacao_path(assigns(:locacao))
  end

  test "should destroy locacao" do
    assert_difference('Locacao.count', -1) do
      delete :destroy, :id => @locacao
    end

    assert_redirected_to locacaos_path
  end
end
