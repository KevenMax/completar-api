require 'test_helper'

class CategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoria = categorias(:one)
  end

  test "should get index" do
    get categorias_url, as: :json
    assert_response :success
  end

  test "should create categoria" do
    assert_difference('Categoria.count') do
      post categorias_url, params: { categoria: { ativo: @categoria.ativo, curso_id: @categoria.curso_id, limite_carga_horaria: @categoria.limite_carga_horaria, nome: @categoria.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show categoria" do
    get categoria_url(@categoria), as: :json
    assert_response :success
  end

  test "should update categoria" do
    patch categoria_url(@categoria), params: { categoria: { ativo: @categoria.ativo, curso_id: @categoria.curso_id, limite_carga_horaria: @categoria.limite_carga_horaria, nome: @categoria.nome } }, as: :json
    assert_response 200
  end

  test "should destroy categoria" do
    assert_difference('Categoria.count', -1) do
      delete categoria_url(@categoria), as: :json
    end

    assert_response 204
  end
end
