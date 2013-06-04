class Criterio < ActiveRecord::Base
  has_many :observacions 	
  attr_accessible :descripcion, :estado, :nombre, :tipo

  validates :nombre, :descripcion, :presence => true
  validates :nombre, :uniqueness => true

  def self.buscar_tipo(search)
  	if search
  		find(:all, :conditions => ['tipo LIKE ?', "#{search}"])
  	else
  		find(:all)
  	end
  end

end
