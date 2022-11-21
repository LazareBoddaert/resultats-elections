class CreateScrutins < ActiveRecord::Migration[7.0]
  def change
    create_table :scrutins do |t|
      t.integer :annee
      t.integer :tour
      t.integer :nombre_inscrit
      t.integer :abstention
      t.integer :nombre_votant
      t.integer :blancs
      t.integer :nuls
      t.integer :nombre_exprime

      t.timestamps
    end
  end
end
