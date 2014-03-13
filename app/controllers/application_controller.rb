class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :guardar_estadistica
  
  def after_sign_in_path_for(administrador)
    usuarios_path
  end
   
  private
  def guardar_estadistica
    est = Estadistica.find_or_create_by(_id: request.url)
    est.inc(hits: 1)
  end
end
