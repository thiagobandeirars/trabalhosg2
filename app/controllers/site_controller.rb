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

  def locacao
    @locacao = Locacao.new

    if params[:id]

      @livro = Livro.find(params[:id])

      Locacao.create(:usuario_id => @current_user.id,
                     :livro_id   => @livro.id,
                     :data_locacao => Date.today,
                     :data_prevista_dev => Date.today + @livro.prazo_entrega,
                     :data_devolucao => nil,
                     :multa => nil)

      respond_to do |format|
        if @locacao.save
          flash[:notice] = "Livro locado com sucesso"
        end
      end

    else
      flash[:error] = "Livro indicado nao existe"
    end
      
  end
  
end
