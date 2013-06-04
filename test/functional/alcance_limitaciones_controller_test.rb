require 'test_helper'

class AlcanceLimitacionesControllerTest < ActionController::TestCase
  setup do
    @alcance_limitacione = alcance_limitaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcance_limitaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcance_limitacione" do
    assert_difference('AlcanceLimitacione.count') do
      post :create, alcance_limitacione: { descripcion: @alcance_limitacione.descripcion, estado: @alcance_limitacione.estado, nombre: @alcance_limitacione.nombre, tipo: @alcance_limitacione.tipo }
    end

    assert_redirected_to alcance_limitacione_path(assigns(:alcance_limitacione))
  end

  test "should show alcance_limitacione" do
    get :show, id: @alcance_limitacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcance_limitacione
    assert_response :success
  end

  test "should update alcance_limitacione" do
    put :update, id: @alcance_limitacione, alcance_limitacione: { descripcion: @alcance_limitacione.descripcion, estado: @alcance_limitacione.estado, nombre: @alcance_limitacione.nombre, tipo: @alcance_limitacione.tipo }
    assert_redirected_to alcance_limitacione_path(assigns(:alcance_limitacione))
  end

  test "should destroy alcance_limitacione" do
    assert_difference('AlcanceLimitacione.count', -1) do
      delete :destroy, id: @alcance_limitacione
    end

    assert_redirected_to alcance_limitaciones_path
  end
end
