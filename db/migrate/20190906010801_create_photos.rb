class CreatePhotos < ActiveRecord::Migration[5.2]
  def up
  	#drop_table :photos
    create_table :photos do |t|
    t.integer :place_id
    t.text :caption	
      t.timestamps
    end
  end
end
