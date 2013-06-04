class ConsecuencesController < ApplicationController
  def index
  	@vulnerabilidades = Vulnerabilidad.all
  end

  def show_vulnerabilidad
  	@vulnerabilidad = Vulnerabilidad.find(params[:id])
  end

  def create
    @vulnerabilidad = Vulnerabilidad.find(params[:vulnerabilidad_id])
    @consecuence = @vulnerabilidad.consecuences.create(params[:consecuence])
   	redirect_to show_vulnerabilidad_path(@vulnerabilidad)
  end

  def show_consecuences
  	#@amenazas = Amenaza.all
  	@vulnerabilidad = Vulnerabilidad.find(params[:id])
  	@consecuences = @vulnerabilidad.consecuences.all
  end

  def destroy
    @consecuence = Consecuence.find(params[:id])
    @consecuence.destroy
    redirect_to consecuences_path
  end
end
