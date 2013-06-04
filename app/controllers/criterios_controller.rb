class CriteriosController < ApplicationController

  load_and_authorize_resource
  # GET /criterios
  # GET /criterios.json
  def index
    @criterios = Criterio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @criterios }
    end
  end

  # GET /criterios/1
  # GET /criterios/1.json
  def show
    @criterio = Criterio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @criterio }
    end
  end

  # GET /criterios/new
  # GET /criterios/new.json
  def new
    @criterio = Criterio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @criterio }
    end
  end

  # GET /criterios/1/edit
  def edit
    @criterio = Criterio.find(params[:id])
  end

  # POST /criterios
  # POST /criterios.json
  def create
    @criterio = Criterio.new(params[:criterio])

    @criterio.estado = true

    respond_to do |format|
      if @criterio.save
        format.html { redirect_to @criterio, notice: 'Criterio was successfully created.' }
        format.json { render json: @criterio, status: :created, location: @criterio }
      else
        format.html { render action: "new" }
        format.json { render json: @criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /criterios/1
  # PUT /criterios/1.json
  def update
    @criterio = Criterio.find(params[:id])

    respond_to do |format|
      if @criterio.update_attributes(params[:criterio])
        format.html { redirect_to @criterio, notice: 'Criterio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criterios/1
  # DELETE /criterios/1.json
  def destroy
    @criterio = Criterio.find(params[:id])
    @criterio.destroy

    respond_to do |format|
      format.html { redirect_to criterios_url }
      format.json { head :no_content }
    end
  end

  def revision_criterios
    @criterios = Criterio.all
  end

  def estado
    @criterio = Criterio.find(params[:id])
    if @criterio.estado == true
      @criterio.estado = false
    else
      @criterio.estado = true
    end
    @criterio.save
    redirect_to revision_criterios_path, notice: 'cambio de estado realizado con exito'
  end

  def show_gerente
    @criterio = Criterio.find(params[:id])
  end

  def new_criterio_gerente
    @criterio = Criterio.new
  end

  def revision_final
    if params[:tipo] != ""
      @criterios = Criterio.buscar_tipo(params[:tipo])
    else
      @criterios = Criterio.all
    end
  end

  def estado_final_criterio
    @criterio = Criterio.find(params[:id])
    if @criterio.estado == true
      @criterio.estado = false
    else
      @criterio.estado = true
    end
    @criterio.save
    redirect_to revision_final_path, notice: 'cambio de estado realizado con exito'
  end

  def show_onservaciones
    @criterio = Criterio.find(params[:id])
  end

  def show_criterio_final
    @criterio = Criterio.find(params[:id])
  end
end
