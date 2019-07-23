class CampusController < ApplicationController
  before_action :set_campu, only: [:show, :update, :destroy]

  # GET /campus
  def index
    @campus = Campu.all

    render json: @campus
  end

  # GET /campus/1
  def show
    render json: @campu
  end

  # POST /campus
  def create
    @campu = Campu.new(campu_params)

    if @campu.save
      render json: @campu, status: :created, location: @campu
    else
      render json: @campu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campus/1
  def update
    if @campu.update(campu_params)
      render json: @campu
    else
      render json: @campu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campus/1
  def destroy
    @campu.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campu
      @campu = Campu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campu_params
      params.require(:campu).permit(:nome, :cep, :cidade, :estado, :endereco, :contato, :ativo)
    end
end
