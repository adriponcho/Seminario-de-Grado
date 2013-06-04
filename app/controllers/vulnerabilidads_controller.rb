class VulnerabilidadsController < ApplicationController
  def index
  	@amenazas = Amenaza.all
  end

  def show_amenaza
  	@amenaza = Amenaza.find(params[:id])
  end

  def create
    @amenaza = Amenaza.find(params[:amenaza_id])
    @vulnerabilidad = @amenaza.vulnerabilidads.create(params[:vulnerabilidad])
   	redirect_to show_amenaza_path(@amenaza)
  end

  def show_vulnerabilidades
  	#@amenazas = Amenaza.all
  	@amenaza = Amenaza.find(params[:id])
  	@vulnerabilidades = @amenaza.vulnerabilidads.all
  end

  def destroy
    @vulnerabilidad = Vulnerabilidad.find(params[:id])
    @vulnerabilidad.destroy
    redirect_to vulnerabilidads_path
  end
end
