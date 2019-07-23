class CampuSerializer < ActiveModel::Serializer
  attributes :id, :nome, :cep, :cidade, :estado, :endereco, :contato, :ativo
end
