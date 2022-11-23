class ChangeTypeToMandatInScrutinsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :scrutins, :type, :mandat
  end
end
