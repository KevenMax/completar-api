class Categoria < ApplicationRecord
  belongs_to :curso
  has_many :horas_complementares

  def percentual_realizado(usuario)
    horas = HorasComplementar.where(ativo: true, categoria_id: id, usuario_id: usuario.id)
    percentual = 0.0
    if !horas.blank? && !limite_carga_horaria.blank? && limite_carga_horaria > 0
      percentual = ((horas.sum('quantidade_horas')/limite_carga_horaria).to_f * 100).to_f.round(1)
    end
    return percentual
  end

end
