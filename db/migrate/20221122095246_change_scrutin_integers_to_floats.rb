class ChangeScrutinIntegersToFloats < ActiveRecord::Migration[7.0]
  def change
    change_column :scrutins, :nombre_inscrit, :float
    change_column :scrutins, :abstention, :float
    change_column :scrutins, :nombre_votant, :float
    change_column :scrutins, :blancs, :float
    change_column :scrutins, :nuls, :float
    change_column :scrutins, :nombre_exprime, :float
  end
end
