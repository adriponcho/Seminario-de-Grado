class Amenaza < ActiveRecord::Base
  belongs_to :activo
  has_many :vulnerabilidads
  attr_accessible :descripcion, :origen, :tipo
end
