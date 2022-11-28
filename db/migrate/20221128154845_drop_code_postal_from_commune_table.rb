class DropCodePostalFromCommuneTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :communes, :code_postal
  end
end
