class CreateObservacionAlcanceLimitacions < ActiveRecord::Migration
  def change
    create_table :observacion_alcance_limitacions do |t|
      t.text :texto
      t.references :alcance_limitacione

      t.timestamps
    end
    add_index :observacion_alcance_limitacions, :alcance_limitacione_id
  end
end
