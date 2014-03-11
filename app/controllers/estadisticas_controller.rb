class EstadisticasController < ApplicationController
  # GET /estadisticas
  # GET /estadisticas.json
  def index
    @estadisticas = Estadistica.all
  end

end
