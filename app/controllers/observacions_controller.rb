class ObservacionsController < ApplicationController

	load_and_authorize_resource
	
	def create
    	@criterio = Criterio.find(params[:criterio_id])
    	@observacion = @criterio.observacions.create(params[:observacion])
    	redirect_to show_gerente_path(@criterio)
  	end
end
