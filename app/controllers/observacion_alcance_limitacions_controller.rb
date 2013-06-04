class ObservacionAlcanceLimitacionsController < ApplicationController
	def create
    	@alcance_limitacione = AlcanceLimitacione.find(params[:alcance_limitacione_id])
    	@observacion_alcance_limitacion = @alcance_limitacione.observacion_alcance_limitacions.create(params[:observacion_alcance_limitacion])
    	redirect_to show_gerente_alcance_limitacion_path(@alcance_limitacione)
  	end
end
