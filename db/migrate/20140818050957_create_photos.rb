class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :image
    	t.string :user_id
    	t.string :venue_photo

    	t.timestamps



    end
  end
end
