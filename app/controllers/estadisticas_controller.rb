class EstadisticasController < ApplicationController
  before_filter :authenticate_administrador!
  # GET /estadisticas
  # GET /estadisticas.json
  def index
    @estadisticas = Estadistica.all
  end

end
