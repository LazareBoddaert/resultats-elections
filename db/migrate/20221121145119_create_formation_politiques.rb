class CreateFormationPolitiques < ActiveRecord::Migration[7.0]
  def change
    create_table :formation_politiques do |t|
      t.string :nom
      t.string :positionnement_politique

      t.timestamps
    end
  end
end
