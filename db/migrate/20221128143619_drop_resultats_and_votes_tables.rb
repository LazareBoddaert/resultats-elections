class DropResultatsAndVotesTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :scrutins
    drop_table :resultats
    drop_table :votes
  end
end
