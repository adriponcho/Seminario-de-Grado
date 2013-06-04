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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130529150837) do

  create_table "activos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "propietario"
    t.string   "tipo"
    t.integer  "prioridad"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "alcance_limitaciones", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "tipo"
    t.boolean  "estado"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "amenazas", :force => true do |t|
    t.string   "origen"
    t.string   "tipo"
    t.text     "descripcion"
    t.integer  "activo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "amenazas", ["activo_id"], :name => "index_amenazas_on_activo_id"

  create_table "consecuences", :force => true do |t|
    t.text     "descripcion"
    t.string   "naturaleza"
    t.integer  "vulnerabilidad_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "promedio",          :default => 0
  end

  add_index "consecuences", ["vulnerabilidad_id"], :name => "index_consecuences_on_vulnerabilidad_id"

  create_table "controles", :force => true do |t|
    t.string   "nobre"
    t.string   "tipo"
    t.text     "descrpcion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "criterios", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "tipo"
    t.boolean  "estado"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "evaluacions", :force => true do |t|
    t.string   "usuario"
    t.integer  "voto"
    t.integer  "consecuence_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "evaluacions", ["consecuence_id"], :name => "index_evaluacions_on_consecuence_id"

  create_table "observacion_alcance_limitacions", :force => true do |t|
    t.text     "texto"
    t.integer  "alcance_limitacione_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "observacion_alcance_limitacions", ["alcance_limitacione_id"], :name => "index_observacion_alcance_limitacions_on_alcance_limitacione_id"

  create_table "observacions", :force => true do |t|
    t.text     "texto"
    t.integer  "criterio_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "observacions", ["criterio_id"], :name => "index_observacions_on_criterio_id"

  create_table "users", :force => true do |t|
    t.string   "ci"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cargo"
    t.string   "rol"
    t.string   "email",                  :default => "",       :null => false
    t.string   "encrypted_password",     :default => "",       :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "activeuser",             :default => "activo"
    t.integer  "estado_inactivo"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vulnerabilidads", :force => true do |t|
    t.string   "descripcion"
    t.string   "tipo"
    t.integer  "amenaza_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "vulnerabilidads", ["amenaza_id"], :name => "index_vulnerabilidads_on_amenaza_id"

end
