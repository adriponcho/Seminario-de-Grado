class CreateCriterios < ActiveRecord::Migration
  def change
    create_table :criterios do |t|
      t.string :nombre
      t.text :descripcion
      t.string :tipo
      t.boolean :estado

      t.timestamps
    end
  end
end
