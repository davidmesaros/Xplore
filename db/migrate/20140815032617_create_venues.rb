class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
    	t.string :venuename
    	t.string :avatar
    	t.string :user_id

    	t.timestamps
    end
  end
end
