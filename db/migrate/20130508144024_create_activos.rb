class CreateActivos < ActiveRecord::Migration
  def change
    create_table :activos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :propietario
      t.string :tipo
      t.integer :prioridad

      t.timestamps
    end
  end
end
