class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :place_id
      t.integer :user_id
      t.photos :photo
      t.timestamps
    end
  end
end
