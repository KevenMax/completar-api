class HorasComplementar < ApplicationRecord
  belongs_to :categoria
  belongs_to :atividade
  belongs_to :usuario
end
