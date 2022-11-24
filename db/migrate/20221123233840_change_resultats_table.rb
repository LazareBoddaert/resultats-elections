class ChangeResultatsTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :resultats, :score_du_candidat_pourcentage, :score_candidat_pourcentage_inscrits
    add_column :resultats, :score_candidat_pourcentage_exprimes, :float
  end
end
