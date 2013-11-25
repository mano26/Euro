class CreatePlayersLists < ActiveRecord::Migration
  def change
    create_table :players_lists do |t|
      t.string :date
      t.integer :user_id
      t.string :group_name

      t.timestamps
    end
  end
end
