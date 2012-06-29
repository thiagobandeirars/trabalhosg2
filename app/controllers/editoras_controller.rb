class EditorasController < ApplicationController
  # GET /editoras
  # GET /editoras.json
  def index
    @editoras = Editora.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @editoras }
    end
  end

  # GET /editoras/1
  # GET /editoras/1.json
  def show
    @editora = Editora.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @editora }
    end
  end

  # GET /editoras/new
  # GET /editoras/new.json
  def new
    @editora = Editora.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @editora }
    end
  end

  # GET /editoras/1/edit
  def edit
    @editora = Editora.find(params[:id])
  end

  # POST /editoras
  # POST /editoras.json
  def create
    @editora = Editora.new(params[:editora])

    respond_to do |format|
      if @editora.save
        format.html { redirect_to @editora, :notice => 'Editora was successfully created.' }
        format.json { render :json => @editora, :status => :created, :location => @editora }
      else
        format.html { render :action => "new" }
        format.json { render :json => @editora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /editoras/1
  # PUT /editoras/1.json
  def update
    @editora = Editora.find(params[:id])

    respond_to do |format|
      if @editora.update_attributes(params[:editora])
        format.html { redirect_to @editora, :notice => 'Editora was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @editora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /editoras/1
  # DELETE /editoras/1.json
  def destroy
    @editora = Editora.find(params[:id])
    @editora.destroy

    respond_to do |format|
      format.html { redirect_to editoras_url }
      format.json { head :no_content }
    end
  end
end
