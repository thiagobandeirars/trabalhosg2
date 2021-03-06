#class SessionsController < ApplicationController
class SessionsController < ActionController::Base

  #skip_before_filter :require_login, :only => [:new, :create]

  def new
  end

  def create
    user = Usuario.find_by_matricula(params[:matricula])
    if user && user.authenticate(params[:senha])
      session[:usuario_id] = user.id

      if user.isAdministrador?
        redirect_to root_url, :notice => "Administrador!"
      else
        redirect_to site_url, :notice => "Logado!"
      end

    else
      flash[:erro] = "Usuario ou senha invalida!"
      redirect_to login_url
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to root_url, :notice => "Desconectado!"
  end

end
