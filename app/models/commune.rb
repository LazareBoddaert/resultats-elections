class Commune < ApplicationRecord
  belongs_to :departement
  has_many :resultat_communes
end
