class AddScoreEnVoixToResultatTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :resultats, :score_du_candidat, :score_du_candidat_pourcentage
    add_column :resultats, :score_du_candidat_voix, :integer
  end
end
