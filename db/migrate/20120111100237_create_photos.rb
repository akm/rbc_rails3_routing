class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_path
      t.string :caption

      t.timestamps
    end
  end
end
