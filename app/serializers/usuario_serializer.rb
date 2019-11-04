class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :email, :nome, :apelido, :matricula, :foto, :contato, :administrador
  belongs_to :campu
  belongs_to :curso
end
