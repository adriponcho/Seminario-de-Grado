class AmenazasController < ApplicationController
  def index
  	@activos = Activo.all
  end

  def show_activo
  	@activo = Activo.find(params[:id])
  end

  def create
    @activo = Activo.find(params[:activo_id])
    @amenaza = @activo.amenazas.create(params[:amenaza])
   	redirect_to show_activo_path(@activo)
  end

  def show_amenazas
  	#@amenazas = Amenaza.all
  	@activo = Activo.find(params[:id])
  	@amenazas = @activo.amenazas.all
  end

  def destroy
    @amenaza = Amenaza.find(params[:id])
    @amenaza.destroy
    redirect_to amenazas_path
  end
end
