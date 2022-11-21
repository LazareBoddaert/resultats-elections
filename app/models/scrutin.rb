class Scrutin < ApplicationRecord
  has_many :votes
  has_many :resultats
end
