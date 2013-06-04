class ObservacionAlcanceLimitacion < ActiveRecord::Base
  belongs_to :alcance_limitacione
  attr_accessible :texto
end
