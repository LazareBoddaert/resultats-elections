class AddColumnsToResultatCandidatTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :resultat_candidats, :score_candidat
    add_column :resultat_candidats, :score_candidat_nombre, :integer
    add_column :resultat_candidats, :score_candidat_pourcentage_inscrit, :float
    add_column :resultat_candidats, :score_candidat_pourcentage_exprime, :float
  end
end
