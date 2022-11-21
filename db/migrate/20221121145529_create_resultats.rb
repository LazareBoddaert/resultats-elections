class CreateResultats < ActiveRecord::Migration[7.0]
  def change
    create_table :resultats do |t|
      t.float :score_du_candidat
      t.references :scrutin, null: false, foreign_key: true
      t.references :candidat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
