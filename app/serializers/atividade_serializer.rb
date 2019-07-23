class AtividadeSerializer < ActiveModel::Serializer
  attributes :id, :nome, :ativo
  has_one :categoria
end
