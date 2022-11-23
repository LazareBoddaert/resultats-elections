class AddNationReferencesToRegionTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :regions, :nation
  end
end
