class CreateObservacions < ActiveRecord::Migration
  def change
    create_table :observacions do |t|
      t.text :texto
      t.references :criterio

      t.timestamps
    end
    add_index :observacions, :criterio_id
  end
end
