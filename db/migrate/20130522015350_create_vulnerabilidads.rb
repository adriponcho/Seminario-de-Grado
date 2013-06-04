class CreateVulnerabilidads < ActiveRecord::Migration
  def change
    create_table :vulnerabilidads do |t|
      t.string :descripcion
      t.string :tipo
      t.references :amenaza

      t.timestamps
    end
    add_index :vulnerabilidads, :amenaza_id
  end
end
