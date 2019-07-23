class HorasComplementarSerializer < ActiveModel::Serializer
  attributes :id, :descricao, :quantidade_horas, :anexo, :ativo
  has_one :categoria
  has_one :atividade
  has_one :usuario
end
