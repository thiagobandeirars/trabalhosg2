class CategorialivrosController < ApplicationController
  # GET /categorialivros
  # GET /categorialivros.json
  def index
    @categorialivros = Categorialivro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @categorialivros }
    end
  end

  # GET /categorialivros/1
  # GET /categorialivros/1.json
  def show
    @categorialivro = Categorialivro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @categorialivro }
    end
  end

  # GET /categorialivros/new
  # GET /categorialivros/new.json
  def new
    @categorialivro = Categorialivro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @categorialivro }
    end
  end

  # GET /categorialivros/1/edit
  def edit
    @categorialivro = Categorialivro.find(params[:id])
  end

  # POST /categorialivros
  # POST /categorialivros.json
  def create
    @categorialivro = Categorialivro.new(params[:categorialivro])

    respond_to do |format|
      if @categorialivro.save
        format.html { redirect_to @categorialivro, :notice => 'Categorialivro was successfully created.' }
        format.json { render :json => @categorialivro, :status => :created, :location => @categorialivro }
      else
        format.html { render :action => "new" }
        format.json { render :json => @categorialivro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categorialivros/1
  # PUT /categorialivros/1.json
  def update
    @categorialivro = Categorialivro.find(params[:id])

    respond_to do |format|
      if @categorialivro.update_attributes(params[:categorialivro])
        format.html { redirect_to @categorialivro, :notice => 'Categorialivro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @categorialivro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categorialivros/1
  # DELETE /categorialivros/1.json
  def destroy
    @categorialivro = Categorialivro.find(params[:id])
    @categorialivro.destroy

    respond_to do |format|
      format.html { redirect_to categorialivros_url }
      format.json { head :no_content }
    end
  end
end
