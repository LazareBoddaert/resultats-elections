class UpdateScrutinTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :scrutins, :nombre_inscrit, :inscrit_voix
    rename_column :scrutins, :abstention, :abstention_voix
    add_column :scrutins, :abstention_pourcentage_inscrits, :float
    rename_column :scrutins, :nombre_votant, :votant_voix
    add_column :scrutins, :votant_pourcentage_inscrits, :float
    rename_column :scrutins, :blancs, :blancs_voix
    add_column :scrutins, :blancs_pourcentage_inscrits, :float
    add_column :scrutins, :blancs_pourcentage_votants, :float
    rename_column :scrutins, :nuls, :nuls_voix
    add_column :scrutins, :nuls_pourcentage_inscrits, :float
    add_column :scrutins, :nuls_pourcentage_votants, :float
    rename_column :scrutins, :nombre_exprime, :exprime_voix
    add_column :scrutins, :exprime_pourcentage_inscrits, :float
    add_column :scrutins, :exprime_pourcentage_votants, :float
  end
end
