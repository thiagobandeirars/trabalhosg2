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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120701182451) do

  create_table "categorialivros", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "editoras", :force => true do |t|
    t.string   "razao_social"
    t.string   "cnpj"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "grupos", :force => true do |t|
    t.string   "descricao"
    t.float    "multa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "livros", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.string   "autor"
    t.integer  "quantidade"
    t.integer  "prazo_entrega"
    t.string   "isbn"
    t.date     "data_lancamento"
    t.integer  "edicao"
    t.integer  "editora_id"
    t.integer  "categorialivro_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "livros", ["categorialivro_id"], :name => "index_livros_on_categorialivro_id"
  add_index "livros", ["editora_id"], :name => "index_livros_on_editora_id"

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.integer  "matricula"
    t.integer  "grupo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "usuarios", ["grupo_id"], :name => "index_usuarios_on_grupo_id"

end
