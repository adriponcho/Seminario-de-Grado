class AddctivoUser < ActiveRecord::Migration
  def change
    add_column :users, :activeuser, :string, :default => "activo"
  end
end
