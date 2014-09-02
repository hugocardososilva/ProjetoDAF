# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140902142204) do

  create_table "candidatos", force: true do |t|
    t.integer  "numero"
    t.string   "nome"
    t.integer  "partido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eleitors", force: true do |t|
    t.string   "nome"
    t.integer  "titulo"
    t.string   "endereco"
    t.integer  "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partidos", force: true do |t|
    t.integer  "numero"
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votos", force: true do |t|
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eleitor_id"
    t.integer  "candidato_id"
  end

end
