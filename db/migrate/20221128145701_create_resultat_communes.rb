class CreateResultatCommunes < ActiveRecord::Migration[7.0]
  def change
    create_table :resultat_communes do |t|
      t.integer :inscrit_nombre
      t.integer :abstention_nombre
      t.float :abstention_pourcentage_inscrit
      t.integer :votant_nombre
      t.float :votant_pourcentage_inscrit
      t.integer :blancs_nombre
      t.float :blancs_pourcentage_inscrit
      t.float :blancs_pourcentage_votant
      t.integer :nuls_nombre
      t.float :nuls_pourcentage_inscrit
      t.float :nuls_pourcentage_votant
      t.integer :blancs_nuls_nombre
      t.float :blancs_nuls_pourcentage_inscrit
      t.float :blancs_nuls_pourcentage_votant
      t.integer :exprime_nombre
      t.float :exprime_pourcentage_inscrit
      t.float :exprime_pourcentage_votant
      t.references :scrutin, null: false, foreign_key: true
      t.references :commune, null: false, foreign_key: true

      t.timestamps
    end
  end
end
