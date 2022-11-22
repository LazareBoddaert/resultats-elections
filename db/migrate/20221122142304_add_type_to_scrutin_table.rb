class AddTypeToScrutinTable < ActiveRecord::Migration[7.0]
  def change
    add_column :scrutins, :type, :string
  end
end
