class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.string :nome
      t.references :categoria, foreign_key: true
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
