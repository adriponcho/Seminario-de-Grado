class AddStatusUser < ActiveRecord::Migration
  def up 
  	add_column :users, :estado_inactivo, :integer

  end

  def down

  	remove_column :users, :estado_inactivo
  end
end
