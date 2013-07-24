class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :source
      t.string :caption
      t.integer :length

      t.timestamps
    end
  end
end
