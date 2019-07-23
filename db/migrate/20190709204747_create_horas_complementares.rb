class CreateHorasComplementares < ActiveRecord::Migration[5.2]
  def change
    create_table :horas_complementares do |t|
      t.references :categoria, foreign_key: true
      t.references :atividade, foreign_key: true
      t.string :descricao
      t.decimal :quantidade_horas
      t.references :usuario, foreign_key: true
      t.string :anexo
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
