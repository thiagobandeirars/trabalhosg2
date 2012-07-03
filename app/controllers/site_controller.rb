class SiteController < ApplicationController
  layout 'estrutura'
   
  def index
   @categorialivros = Categorialivro.all   
   @livros = Livro.all
  end

  def pesquisa
    @categorialivros = Categorialivro.all   
 	q= "%#{params[:pesquisa]}%"
	@livros = Livro.where("titulo like ?",q)
  end

  def categorias
	@categorialivros = Categorialivro.all
    if (params[:id])
      @categoria = Categorialivro.find(params[:id])
      @livros = Livro.where(:categorialivro_id => params[:id])
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
