class CreateAmenazas < ActiveRecord::Migration
  def change
    create_table :amenazas do |t|
      t.string :origen
      t.string :tipo
      t.text :descripcion
      t.references :activo

      t.timestamps
    end
    add_index :amenazas, :activo_id
  end
end
