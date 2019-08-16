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

ActiveRecord::Schema.define(version: 2019_08_16_193208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidatos", force: :cascade do |t|
    t.string "Login"
    t.string "Senha"
    t.string "CPF"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratacaos", force: :cascade do |t|
    t.string "Data_admissao"
    t.string "date"
    t.date "Data_demissao"
    t.integer "Registro_funcionario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curriculos", force: :cascade do |t|
    t.string "Nome_Completo"
    t.date "Data_Nascimento"
    t.string "RG"
    t.string "CPF"
    t.string "Email"
    t.string "Telefone"
    t.string "Logradouro"
    t.string "Cidade"
    t.string "Estado"
    t.string "UF"
    t.string "CEP"
    t.string "Formacao"
    t.string "Curso_Complementar"
    t.string "ExpProfissional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos_complementares", force: :cascade do |t|
    t.string "Nome_curso"
    t.string "Nome_instituicao"
    t.date "Data_inicio"
    t.date "Data_formacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exp_profissionals", force: :cascade do |t|
    t.string "Nome_Empresa"
    t.string "Cargo"
    t.date "Data_admissao"
    t.date "Data_saida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formacaos", force: :cascade do |t|
    t.string "Nome_curso"
    t.string "Nome_instituicao"
    t.date "Data_inicio"
    t.date "Data_formacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer "Codigo"
    t.string "Nome"
    t.string "Departamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "processo_seletivos", force: :cascade do |t|
    t.date "Agenda"
    t.string "Status"
    t.string "Lista_candidatos"
    t.string "Nome_processo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "rails"
    t.string "generate"
    t.string "scaffold"
    t.string "User"
    t.string "Nome_Completo"
    t.integer "Idade"
    t.string "CPF"
    t.date "Data_de_Nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
