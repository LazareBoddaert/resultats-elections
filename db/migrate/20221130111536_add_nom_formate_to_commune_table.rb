class AddNomFormateToCommuneTable < ActiveRecord::Migration[7.0]
  def change
    add_column :communes, :nom_formate, :string
  end
end
