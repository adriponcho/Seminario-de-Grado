class Consecuence < ActiveRecord::Base
  belongs_to :vulnerabilidad
  has_many :evaluacions
  attr_accessible :descripcion, :naturaleza
end
