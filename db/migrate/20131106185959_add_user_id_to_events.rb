class AddUserIdToEvents < ActiveRecord::Migration
  def change
  	def change
	    add_column :events, :user_id, :integer
	    add_index :events, :user_id
  	end
  end
end
