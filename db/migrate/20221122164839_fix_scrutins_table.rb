class FixScrutinsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :scrutins, :type, :string
    rename_column :scrutins, :type, :mandat
  end
end
