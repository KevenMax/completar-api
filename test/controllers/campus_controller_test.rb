require 'test_helper'

class CampusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campu = campus(:one)
  end

  test "should get index" do
    get campus_url, as: :json
    assert_response :success
  end

  test "should create campu" do
    assert_difference('Campu.count') do
      post campus_url, params: { campu: { ativo: @campu.ativo, cep: @campu.cep, cidade: @campu.cidade, contato: @campu.contato, endereco: @campu.endereco, estado: @campu.estado, nome: @campu.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show campu" do
    get campu_url(@campu), as: :json
    assert_response :success
  end

  test "should update campu" do
    patch campu_url(@campu), params: { campu: { ativo: @campu.ativo, cep: @campu.cep, cidade: @campu.cidade, contato: @campu.contato, endereco: @campu.endereco, estado: @campu.estado, nome: @campu.nome } }, as: :json
    assert_response 200
  end

  test "should destroy campu" do
    assert_difference('Campu.count', -1) do
      delete campu_url(@campu), as: :json
    end

    assert_response 204
  end
end
