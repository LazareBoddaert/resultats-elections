class ResultatCandidat < ApplicationRecord
  belongs_to :scrutin
  belongs_to :candidat

end

## Besoin de récupérée le nombre d'inscrit et de votant dans la commune
# def score_pourcentage_inscrit(valeur_nb)
#   @prc_ins = (valeur_nb * 100).fdiv(inscrit_nombre)
#   @prc_ins.round(2)
# end

# def score_pourcentage_votant(valeur_nb)
#   @prc_votant = (valeur_nb * 100).fdiv(votant_nombre)
#   @prc_votant.round(2)
# end
