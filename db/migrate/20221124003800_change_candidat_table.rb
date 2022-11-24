class ChangeCandidatTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :candidats, :formation_politique_id
    add_column :candidats, :formation_politique_id, :integer, default: 0, null: false
    add_index :candidats, :formation_politique_id
  end
end
