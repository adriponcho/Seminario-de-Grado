class Observacion < ActiveRecord::Base
  belongs_to :criterio
  attr_accessible :texto

  validates :texto, :presence => true
end
