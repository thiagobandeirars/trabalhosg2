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
    @categorialivros = Categorialivro.all   
	@livros = Livro.find_by_categorialivro_id(params[:id])
  end

  def historico
    @categorialivros = Categorialivro.all   
  end

  def detalhes
    @categorialivros = Categorialivro.all   
	@livro = Livro.find(params[:id])
  end
  
end
