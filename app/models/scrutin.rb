class Scrutin < ApplicationRecord
  has_many :resultats_candidats
  has_many :resultats_communes
end
