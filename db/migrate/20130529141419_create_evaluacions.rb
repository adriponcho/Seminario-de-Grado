class CreateEvaluacions < ActiveRecord::Migration
  def change
    create_table :evaluacions do |t|
      t.string :usuario
      t.integer :voto
      t.references :consecuence

      t.timestamps
    end
    add_index :evaluacions, :consecuence_id
  end
end
