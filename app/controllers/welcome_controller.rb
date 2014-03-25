class WelcomeController < ApplicationController
  def index
    hits = Estadistica.find(request.url).hits
    @referer = params[:referer] || :ninguno
    @usuario = Usuario.new
    # Descomentar esto y borrar lo de abajo cuando deba mantener la primera pagina que se le mostro al usuario.
    if not cookies[:page].nil?
      @landing = cookies[:page]
      render cookies[:page]
    elsif hits.even?
      cookies[:page] = :landing1
      @landing = :landing1
      render :landing1
    else
      cookies[:page] = :landing2
      @landing = :landing2
      render :landing2
    end
  #if hits.even?
  #  @landing = :landing1
  #  render :landing1
  #else
  #  @landing = :landing2
  #  render :landing2
  #end
  end
end
