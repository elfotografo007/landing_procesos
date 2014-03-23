class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_administrador!, only: [:index, :show]
  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @referer = params[:referer] || :ninguno
    @landing = :landing2
    @usuario = Usuario.new
  end


  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to root_path, notice: 'Tus datos se registraron correctamente. Gracias.' }
        format.json { render action: 'show', status: :created, location: @usuario }
      else
        @referer = @usuario.referer
        @landing = @usuario.landing
        format.html { render action: 'new' }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :telefono, :ciudad, :correo, :referer, :landing)
    end
end
