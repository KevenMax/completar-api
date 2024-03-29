class CategoriasController < ApplicationController
  before_action :set_categoria, only: [:show, :update, :destroy]
  # GET /categorias
  def home
    percentual = @usuario.percentual_horas_realizadas 
    categorias = @usuario.categorias
    data = {
      percentual: percentual,
      categorias: categorias
    }
    render json: data
  end

  def index
    render json: @usuario.categorias
  end

  # GET /categorias/1
  def show
    percentual = @categoria.percentual_realizado(@usuario)
    data = {
      percentual: percentual,
      categoria: @categoria
    }
    render json: data
  end

  # POST /categorias
  def create
    @categoria = Categoria.new(categoria_params)

    if @categoria.save
      render json: @categoria, status: :created, location: @categoria
    else
      render json: @categoria.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categorias/1
  def update
    if @categoria.update(categoria_params)
      render json: @categoria
    else
      render json: @categoria.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categorias/1
  def destroy
    @categoria.destroy
  end

  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_categoria
    @categoria = Categoria.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def categoria_params
    params.require(:categoria).permit(:nome, :limite_carga_horaria, :curso_id, :ativo)
  end
end
