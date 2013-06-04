class AlcanceLimitacionesController < ApplicationController

  #load_and_authorize_resource
  # GET /alcance_limitaciones
  # GET /alcance_limitaciones.json
  def index
    @alcance_limitaciones = AlcanceLimitacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alcance_limitaciones }
    end
  end

  # GET /alcance_limitaciones/1
  # GET /alcance_limitaciones/1.json
  def show
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alcance_limitacione }
    end
  end

  # GET /alcance_limitaciones/new
  # GET /alcance_limitaciones/new.json
  def new
    @alcance_limitacione = AlcanceLimitacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alcance_limitacione }
    end
  end

  # GET /alcance_limitaciones/1/edit
  def edit
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
  end

  # POST /alcance_limitaciones
  # POST /alcance_limitaciones.json
  def create
    @alcance_limitacione = AlcanceLimitacione.new(params[:alcance_limitacione])

    respond_to do |format|
      if @alcance_limitacione.save
        format.html { redirect_to @alcance_limitacione, notice: 'Alcance limitacione was successfully created.' }
        format.json { render json: @alcance_limitacione, status: :created, location: @alcance_limitacione }
      else
        format.html { render action: "new" }
        format.json { render json: @alcance_limitacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alcance_limitaciones/1
  # PUT /alcance_limitaciones/1.json
  def update
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])

    respond_to do |format|
      if @alcance_limitacione.update_attributes(params[:alcance_limitacione])
        format.html { redirect_to @alcance_limitacione, notice: 'Alcance limitacione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alcance_limitacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcance_limitaciones/1
  # DELETE /alcance_limitaciones/1.json
  def destroy
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
    @alcance_limitacione.destroy

    respond_to do |format|
      format.html { redirect_to alcance_limitaciones_url }
      format.json { head :no_content }
    end
  end

  def revision_alcances_limitaciones
    @alcance_limitaciones = AlcanceLimitacione.all
  end

  def estado
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
    if @alcance_limitacione.estado == true
      @alcance_limitacione.estado = false
    else
      @alcance_limitacione.estado = true
    end
    @alcance_limitacione.save
    redirect_to revision_alcances_limitaciones_path, notice: 'Cambio de estado realizado con exito'
  end

  def show_gerente_alcance_limitacion
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
  end

  def revision_final_alcances_limitaciones
    if params[:tipo] != ""
      @alcance_limitaciones = AlcanceLimitacione.buscar_tipo(params[:tipo])
    else
      @alcance_limitaciones = AlcanceLimitacione.all
    end
  end

  def estado_final_alcance_limitacion
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
    if @alcance_limitacione.estado == true
      @alcance_limitacione.estado = false
    else
      @alcance_limitacione.estado = true
    end
    @alcance_limitacione.save
    redirect_to revision_final_alcances_limitaciones_path, notice: 'Cambio de estado realizado con exito'
  end

    def show_observaciones_alcances_limitaciones
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
  end

  def show_alcances_limitaciones_final
    @alcance_limitacione = AlcanceLimitacione.find(params[:id])
  end

end
