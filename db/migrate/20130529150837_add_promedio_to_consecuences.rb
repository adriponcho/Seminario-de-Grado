class AddPromedioToConsecuences < ActiveRecord::Migration
  def change
  	change_table :consecuences do |t|
      t.integer :promedio, :default => 0
  	end
  end
end
