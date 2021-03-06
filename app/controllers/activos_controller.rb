class ActivosController < ApplicationController

  #load_and_authorize_resource
  # GET /activos
  # GET /activos.json
  def index
    @activos = Activo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activos }
    end
  end

  # GET /activos/1
  # GET /activos/1.json
  def show
    @activo = Activo.find(params[:id])
    #@amenaza = @activo.amenazas.build
    #if @activo.amenazas.count != 0
    #  @amenaza = Amenaza.find(@activo.amenaza_id)
    #else
    #  @amenaza = Amenaza.new
    #end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activo }
    end
  end

  # GET /activos/new
  # GET /activos/new.json
  def new
    @activo = Activo.new
    @amenaza = Amenaza.all(:select => "id,origen")
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activo }
    end
  end

  # GET /activos/1/edit
  def edit
    @activo = Activo.find(params[:id])
    @amenaza = Amenaza.find(:all,:order => "tipo")
  end

  # POST /activos
  # POST /activos.json
  def create
    @activo = Activo.new(params[:activo])

    respond_to do |format|
      if @activo.save
        format.html { redirect_to @activo, notice: 'Activo was successfully created.' }
        format.json { render json: @activo, status: :created, location: @activo }
      else
        format.html { render action: "new" }
        format.json { render json: @activo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activos/1
  # PUT /activos/1.json
  def update
    @activo = Activo.find(params[:id])

    respond_to do |format|
      if @activo.update_attributes(params[:activo])
        format.html { redirect_to @activo, notice: 'Activo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activos/1
  # DELETE /activos/1.json
  def destroy
    @activo = Activo.find(params[:id])
    @activo.destroy

    respond_to do |format|
      format.html { redirect_to activos_url }
      format.json { head :no_content }
    end
  end
end
