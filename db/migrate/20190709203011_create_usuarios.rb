class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :email, unique: true
      t.string :password_digest
      t.string :nome
      t.string :apelido
      t.string :matricula
      t.string :foto
      t.string :contato
      t.boolean :administrador
      t.references :campu, foreign_key: true
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end
