class CreateResultatCandidats < ActiveRecord::Migration[7.0]
  def change
    create_table :resultat_candidats do |t|
      t.float :score_candidat
      t.references :scrutin, null: false, foreign_key: true
      t.references :candidat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
