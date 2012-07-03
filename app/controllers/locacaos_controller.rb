class LocacaosController < ApplicationController
  # GET /locacaos
  # GET /locacaos.json
  def index
    @locacaos = Locacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @locacaos }
    end
  end

  # GET /locacaos/1
  # GET /locacaos/1.json
  def show
    @locacao = Locacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @locacao }
    end
  end

  # GET /locacaos/new
  # GET /locacaos/new.json
  def new
    @locacao = Locacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @locacao }
    end
  end

  # GET /locacaos/1/edit
  def edit
    @locacao = Locacao.find(params[:id])
  end

  # POST /locacaos
  # POST /locacaos.json
  def create
    @locacao = Locacao.new(params[:locacao])

    respond_to do |format|
      if @locacao.save
        format.html { redirect_to @locacao, :notice => 'Locacao was successfully created.' }
        format.json { render :json => @locacao, :status => :created, :location => @locacao }
      else
        format.html { render :action => "new" }
        format.json { render :json => @locacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locacaos/1
  # PUT /locacaos/1.json
  def update
    @locacao = Locacao.find(params[:id])

    respond_to do |format|
      if @locacao.update_attributes(params[:locacao])
        format.html { redirect_to @locacao, :notice => 'Locacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @locacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locacaos/1
  # DELETE /locacaos/1.json
  def destroy
    @locacao = Locacao.find(params[:id])
    @locacao.destroy

    respond_to do |format|
      format.html { redirect_to locacaos_url }
      format.json { head :no_content }
    end
  end
end
