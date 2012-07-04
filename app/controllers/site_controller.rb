class SiteController < ApplicationController
  layout 'estrutura'
   
  def index
   @categorialivros = Categorialivro.all   
   @livros = Livro.all
  end

  def pesquisa
    @categorialivros = Categorialivro.all   
    q= "%#{params[:pesquisa]}%"
    #@livros = Livro.where("titulo like ?",q)
    @livros = Livro.find(:all, :conditions => ['titulo like ?', q])
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

  def locacao
    @categorialivros = Categorialivro.all
    @locacao = Locacao.new

    if params[:id]
      @livro = Livro.find(params[:id])

      @locacao.usuario_id = @current_user.id
      @locacao.livro_id = @livro.id
      @locacao.data_locacao = Date.today
      @locacao.data_prevista_dev = Date.today + @livro.prazo_entrega
      @locacao.data_devolucao = nil
      @locacao.multa = 0

      if @locacao.save
	flash[:notice] = "Locação realizada com sucesso!"
        #format.html { redirect_to @locacao, :notice => 'Locacao was successfully created.' }
        #format.json { render :json => @locacao, :status => :created, :location => @locacao }
      else
	flash[:error] = "Não foi possível realizar locação!"
        #format.html { render :action => "new" }
        #format.json { render :json => @locacao.errors, :status => :unprocessable_entity }
      end
    else
      flash[:error] = "Livro indicado nao existe"
    end
  end
  
end
