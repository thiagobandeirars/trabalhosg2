class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  before_filter :require_login

  private

  def require_login
    unless logged_in?
      flash[:error] = "Voce deve se autenticar!!"
      redirect_to login_url
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end




end
