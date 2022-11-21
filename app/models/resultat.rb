class Resultat < ApplicationRecord
  belongs_to :scrutin
  belongs_to :candidat
end
