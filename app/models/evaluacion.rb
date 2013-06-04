class Evaluacion < ActiveRecord::Base
  belongs_to :consecuence
  attr_accessible :usuario, :voto
end
