class WelcomeController < ApplicationController
  def index
    hits = Estadistica.find(request.url).hits
    @referer = params[:referer] || :ninguno
    if hits.even?
      @usuario = Usuario.new
      render :landing1
    else
      render :landing2
    end
  end
end
