class AddNomFormateToDepartementTable < ActiveRecord::Migration[7.0]
  def change
    add_column :departements, :nom_formate, :string
  end
end
