class WelcomeController < ApplicationController
  def index
    hits = Estadistica.find(request.url).hits
    if hits.even?
      @usuario = Usuario.new
      render :landing1
    else
      render :landing2
    end
  end
end
