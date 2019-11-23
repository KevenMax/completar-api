class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :email, :nome, :apelido, :matricula, :foto, :contato, :administrador, :horas_realizadas, :total_horas, :horas_realizadas
  belongs_to :campu
  belongs_to :curso

  def foto
    object.foto.url(:big)
  end

  def horas_realizadas
    object.horas_realizadas
  end

  def total_horas
    object.total_horas
  end
end
