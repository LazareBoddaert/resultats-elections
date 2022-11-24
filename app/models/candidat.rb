class Candidat < ApplicationRecord
  belongs_to :formation_politique, optional: true
  has_many :resultats
end
