class ChangeScrutinFloatsToIntegers < ActiveRecord::Migration[7.0]
  def change
    change_column :scrutins, :nombre_inscrit, :integer
    change_column :scrutins, :abstention, :integer
    change_column :scrutins, :nombre_votant, :integer
    change_column :scrutins, :blancs, :integer
    change_column :scrutins, :nuls, :integer
    change_column :scrutins, :nombre_exprime, :integer
  end
end
