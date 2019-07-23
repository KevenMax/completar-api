class CategoriaSerializer < ActiveModel::Serializer
  attributes :id, :nome, :limite_carga_horaria, :ativo
  has_one :curso
end
