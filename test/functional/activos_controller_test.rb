require 'test_helper'

class ActivosControllerTest < ActionController::TestCase
  setup do
    @activo = activos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activo" do
    assert_difference('Activo.count') do
      post :create, activo: { descripcion: @activo.descripcion, nombre: @activo.nombre, prioridad: @activo.prioridad, propietario: @activo.propietario, tipo: @activo.tipo }
    end

    assert_redirected_to activo_path(assigns(:activo))
  end

  test "should show activo" do
    get :show, id: @activo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activo
    assert_response :success
  end

  test "should update activo" do
    put :update, id: @activo, activo: { descripcion: @activo.descripcion, nombre: @activo.nombre, prioridad: @activo.prioridad, propietario: @activo.propietario, tipo: @activo.tipo }
    assert_redirected_to activo_path(assigns(:activo))
  end

  test "should destroy activo" do
    assert_difference('Activo.count', -1) do
      delete :destroy, id: @activo
    end

    assert_redirected_to activos_path
  end
end
