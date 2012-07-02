class SiteController < ApplicationController
  layout 'estrutura'
   
  def index
   @categorialivros = Categorialivro.all   
   @livros = Livro.all
  end

  def pesquisa
    @categorialivros = Categorialivro.all   
    #@livro = Livro.find_by_titulo(params[:pesquisa])
  end

  def categorias
    if (params[:id])
      @categorialivros = Categorialivro.where(:id => params[:id])
      @livros = Livro.where(:categorialivro_id => params[:id])
    else
      @categorialivros = Categorialivro.all
    end    
	
  end

  def historico
    @categorialivros = Categorialivro.all   
  end

  def detalhes
    @categorialivros = Categorialivro.all   
	@livro = Livro.find(params[:id])
  end
  
end
