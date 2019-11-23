class HorasComplementar < ApplicationRecord
  belongs_to :categoria
  belongs_to :atividade
  belongs_to :usuario

  mount_uploader :anexo, AnexoUploader

  def quantidade_horas_valido
    horas_realizadas = HorasComplementar.where(ativo: true, usuario_id: usuario_id, categoria_id: categoria.id).sum('quantidade_horas')
    return (horas_realizadas + quantidade_horas <= categoria.limite_carga_horaria) ? true : false 
  end
end
