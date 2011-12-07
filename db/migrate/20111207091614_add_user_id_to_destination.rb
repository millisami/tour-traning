class AddUserIdToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :user_id, :integer

    add_index :destinations, :user_id
  end

end
