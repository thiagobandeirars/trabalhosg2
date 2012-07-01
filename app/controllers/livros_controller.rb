class LivrosController < ApplicationController
  # GET /livros
  # GET /livros.json
  def index
    @livros = Livro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @livros }
      format.xml  { render :xml => @livros }
    end
  end

  # GET /livros/1
  # GET /livros/1.json
  def show
    @livro = Livro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @livro }
    end
  end

  # GET /livros/new
  # GET /livros/new.json
  def new
    @livro = Livro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @livro }
    end
  end

  # GET /livros/1/edit
  def edit
    @livro = Livro.find(params[:id])
  end

  # POST /livros
  # POST /livros.json
  def create
    @livro = Livro.new(params[:livro])

    respond_to do |format|
      if @livro.save
        format.html { redirect_to @livro, :notice => 'Livro was successfully created.' }
        format.json { render :json => @livro, :status => :created, :location => @livro }
      else
        format.html { render :action => "new" }
        format.json { render :json => @livro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /livros/1
  # PUT /livros/1.json
  def update
    @livro = Livro.find(params[:id])

    respond_to do |format|
      if @livro.update_attributes(params[:livro])
        format.html { redirect_to @livro, :notice => 'Livro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @livro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /livros/1
  # DELETE /livros/1.json
  def destroy
    @livro = Livro.find(params[:id])
    @livro.destroy

    respond_to do |format|
      format.html { redirect_to livros_url }
      format.json { head :no_content }
    end
  end
end
