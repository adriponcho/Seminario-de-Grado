class CreateConsecuences < ActiveRecord::Migration
  def change
    create_table :consecuences do |t|
      t.text :descripcion
      t.string :naturaleza
      t.references :vulnerabilidad

      t.timestamps
    end
    add_index :consecuences, :vulnerabilidad_id
  end
end
