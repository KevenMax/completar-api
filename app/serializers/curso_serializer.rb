class CursoSerializer < ActiveModel::Serializer
  attributes :id, :nome, :descricao, :email_contato, :numero_contato, :carga_atividades_complementares, :ativo
  has_one :campu
end
