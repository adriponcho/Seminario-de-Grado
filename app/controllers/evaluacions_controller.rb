class EvaluacionsController < ApplicationController
    def index
  	@consecuences = Consecuence.all
  end

  def create
    @consecuence = Consecuence.find(params[:consecuence_id])
    @evaluacion = @consecuence.evaluacions.create(params[:evaluacion])
   	redirect_to evaluar_consecuencia_path(@consecuence)
  end

  def evaluar_consecuencia
  	@consecuence = Consecuence.find(params[:id])
  end

  def show_consecuencia
  	@consecuencia = Consecuence.find(params[:id])
  end

  def show_vul
  	@consec = Consecuence.find(params[:id])
  	@vulnerabilidad = Vulnerabilidad.find(@consec.vulnerabilidad_id)
  end
end
