class EstadisticasController < ApplicationController
  before_filter :authenticate_administrador!
  # GET /estadisticas
  # GET /estadisticas.json
  def index
    @estadisticas = Estadistica.all
    @referers = Usuario.collection.aggregate "$group" => { _id: "$referer", count: { "$sum" => 1}}
  end

end
