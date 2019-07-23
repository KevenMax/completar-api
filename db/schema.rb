# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_09_204747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atividades", force: :cascade do |t|
    t.string "nome"
    t.bigint "categoria_id"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_atividades_on_categoria_id"
  end

  create_table "campus", force: :cascade do |t|
    t.string "nome"
    t.string "cep"
    t.string "cidade"
    t.string "estado"
    t.string "endereco"
    t.string "contato"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.string "nome"
    t.integer "numero"
    t.decimal "limite_carga_horaria"
    t.bigint "curso_id"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_categorias_on_curso_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "email_contato"
    t.string "numero_contato"
    t.decimal "carga_atividades_complementares"
    t.bigint "campu_id"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campu_id"], name: "index_cursos_on_campu_id"
  end

  create_table "horas_complementares", force: :cascade do |t|
    t.bigint "categoria_id"
    t.bigint "atividade_id"
    t.string "descricao"
    t.decimal "quantidade_horas"
    t.bigint "usuario_id"
    t.string "anexo"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atividade_id"], name: "index_horas_complementares_on_atividade_id"
    t.index ["categoria_id"], name: "index_horas_complementares_on_categoria_id"
    t.index ["usuario_id"], name: "index_horas_complementares_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "nome"
    t.string "email"
    t.string "apelido"
    t.integer "matricula"
    t.string "foto"
    t.string "contato"
    t.boolean "administrador", default: false
    t.bigint "campu_id"
    t.bigint "curso_id"
    t.boolean "ativo", default: true
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campu_id"], name: "index_usuarios_on_campu_id"
    t.index ["confirmation_token"], name: "index_usuarios_on_confirmation_token", unique: true
    t.index ["curso_id"], name: "index_usuarios_on_curso_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["matricula"], name: "index_usuarios_on_matricula", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_usuarios_on_uid_and_provider", unique: true
  end

  add_foreign_key "atividades", "categorias"
  add_foreign_key "categorias", "cursos"
  add_foreign_key "cursos", "campus"
  add_foreign_key "horas_complementares", "atividades"
  add_foreign_key "horas_complementares", "categorias"
  add_foreign_key "horas_complementares", "usuarios"
  add_foreign_key "usuarios", "campus"
  add_foreign_key "usuarios", "cursos"
end
