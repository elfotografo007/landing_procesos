class WelcomeController < ApplicationController
  def index
    hits = Estadistica.find(request.url).hits
    @referer = params[:referer] || :ninguno
    @usuario = Usuario.new
    # Descomentar esto y borrar lo de abajo cuando deba mantener la primera pagina que se le mostro al usuario.
    # if not cookies[:page].nil?
    #   render cookies[:page]
    # elsif hits.even?
    #   cookies[:page] = :landing1
    #   render :landing1
    # else
    #   cookies[:page] = :landing2
    #   render :landing2
    # end
    if hits.even?
      render :landing1
    else
      render :landing2
    end
  end
end
