class AddFavoriteToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :favorite, :boolean
  end
end
