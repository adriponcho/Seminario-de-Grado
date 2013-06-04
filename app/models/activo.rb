class Activo < ActiveRecord::Base
  has_many :amenazas	
  attr_accessible :descripcion, :nombre, :prioridad, :propietario, :tipo

  #validates_presence_of :amenaza_id
  #validates_presence_of :nombre
  #validates_presence_of :propietario

end
