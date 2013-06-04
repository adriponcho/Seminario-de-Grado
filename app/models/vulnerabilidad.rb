class Vulnerabilidad < ActiveRecord::Base
  belongs_to :amenaza
  has_many :consecuences
  attr_accessible :descripcion, :tipo
end
