class ChangeDepartementsNumeroIntegerToString < ActiveRecord::Migration[7.0]
  def change
    change_column :departements, :numero, :string
  end
end
