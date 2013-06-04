class ControlesController < ApplicationController
  # GET /controles
  # GET /controles.json
  def index
    @controles = Controle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @controles }
    end
  end

  # GET /controles/1
  # GET /controles/1.json
  def show
    @controle = Controle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @controle }
    end
  end

  # GET /controles/new
  # GET /controles/new.json
  def new
    @controle = Controle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @controle }
    end
  end

  # GET /controles/1/edit
  def edit
    @controle = Controle.find(params[:id])
  end

  # POST /controles
  # POST /controles.json
  def create
    @controle = Controle.new(params[:controle])

    respond_to do |format|
      if @controle.save
        format.html { redirect_to @controle, notice: 'Controle was successfully created.' }
        format.json { render json: @controle, status: :created, location: @controle }
      else
        format.html { render action: "new" }
        format.json { render json: @controle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /controles/1
  # PUT /controles/1.json
  def update
    @controle = Controle.find(params[:id])

    respond_to do |format|
      if @controle.update_attributes(params[:controle])
        format.html { redirect_to @controle, notice: 'Controle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @controle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controles/1
  # DELETE /controles/1.json
  def destroy
    @controle = Controle.find(params[:id])
    @controle.destroy

    respond_to do |format|
      format.html { redirect_to controles_url }
      format.json { head :no_content }
    end
  end
end
