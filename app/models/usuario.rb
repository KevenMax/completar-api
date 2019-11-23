class Usuario < ApplicationRecord
  belongs_to :campu, required: false
  belongs_to :curso, required: false
  has_many :horas_complementares

  before_save { self.email = email.downcase }
  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true, on: :create
  validates :matricula, uniqueness: true, allow_blank: true
  has_secure_password

  mount_uploader :foto, FotoUploader

  def horas_realizadas
    self.horas_complementares.joins(:categoria).where('horas_complementares.ativo = ? AND categorias.ativo = ? AND categorias.curso_id = ?', true, true, curso.id).sum('quantidade_horas') if !curso.blank?
  end

  def total_horas
    total_curso = !self.curso.blank? ? self.curso.carga_atividades_complementares : nil
    !total_curso.blank? ? total_curso : '0.0'
  end

  def percentual_horas_realizadas
    percentual = 0
    if !total_horas.blank? && total_horas > 0
      percentual = ((horas_realizadas/total_horas).to_f * 100).to_f.round(1)
    end
    return percentual
  end

  def categorias
    categorias = curso.categorias.where(ativo: true).order(:nome)
  	categorias_data = Array.new

    categorias.each do |categoria|
  		categorias_data.push({id: categoria.id, nome: categoria.nome, percentual: categoria.percentual_realizado(self)})
  	end

  	return categorias_data
  end
end
