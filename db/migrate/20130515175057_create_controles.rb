class CreateControles < ActiveRecord::Migration
  def change
    create_table :controles do |t|
      t.string :nobre
      t.string :tipo
      t.text :descrpcion

      t.timestamps
    end
  end
end
