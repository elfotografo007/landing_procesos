class WelcomeController < ApplicationController
  def index
    hits = Estadistica.find(request.url).hits
    if hits.even?
      render :landing1
    else
      render :landing2
    end
  end
end
