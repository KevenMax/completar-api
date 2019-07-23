class HorasComplementaresController < ApplicationController
  before_action :set_horas_complementar, only: [:show, :update, :destroy]

  # GET /horas_complementares
  def index
    @horas_complementares = HorasComplementar.all

    render json: @horas_complementares
  end

  # GET /horas_complementares/1
  def show
    render json: @horas_complementar
  end

  # POST /horas_complementares
  def create
    @horas_complementar = HorasComplementar.new(horas_complementar_params)

    if @horas_complementar.save
      render json: @horas_complementar, status: :created, location: @horas_complementar
    else
      render json: @horas_complementar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /horas_complementares/1
  def update
    if @horas_complementar.update(horas_complementar_params)
      render json: @horas_complementar
    else
      render json: @horas_complementar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /horas_complementares/1
  def destroy
    @horas_complementar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horas_complementar
      @horas_complementar = HorasComplementar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def horas_complementar_params
      params.require(:horas_complementar).permit(:categoria_id, :atividade_id, :descricao, :quantidade_horas, :usuario_id, :anexo, :ativo)
    end
end
