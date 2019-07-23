require 'test_helper'

class HorasComplementaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horas_complementar = horas_complementares(:one)
  end

  test "should get index" do
    get horas_complementares_url, as: :json
    assert_response :success
  end

  test "should create horas_complementar" do
    assert_difference('HorasComplementar.count') do
      post horas_complementares_url, params: { horas_complementar: { anexo: @horas_complementar.anexo, atividade_id: @horas_complementar.atividade_id, ativo: @horas_complementar.ativo, categoria_id: @horas_complementar.categoria_id, descricao: @horas_complementar.descricao, quantidade_horas: @horas_complementar.quantidade_horas, usuario_id: @horas_complementar.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show horas_complementar" do
    get horas_complementar_url(@horas_complementar), as: :json
    assert_response :success
  end

  test "should update horas_complementar" do
    patch horas_complementar_url(@horas_complementar), params: { horas_complementar: { anexo: @horas_complementar.anexo, atividade_id: @horas_complementar.atividade_id, ativo: @horas_complementar.ativo, categoria_id: @horas_complementar.categoria_id, descricao: @horas_complementar.descricao, quantidade_horas: @horas_complementar.quantidade_horas, usuario_id: @horas_complementar.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy horas_complementar" do
    assert_difference('HorasComplementar.count', -1) do
      delete horas_complementar_url(@horas_complementar), as: :json
    end

    assert_response 204
  end
end
