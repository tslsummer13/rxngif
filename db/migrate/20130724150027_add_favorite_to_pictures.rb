class AddFavoriteToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :favorite, :boolean
  end
end

# If you haven't already, add a column called "favorite" of type "boolean"
#  to the pictures table.

# Then use this as a guide to add a "favorite" column of type "boolean"
#   to the videos table

# Remember, the first step to changing your DB is always:
#   rails generate migration <you pick a name>
