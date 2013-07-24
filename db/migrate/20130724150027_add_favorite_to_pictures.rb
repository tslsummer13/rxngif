class AddFavoriteToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :favorite, :boolean
  end
end

# If you haven't already, add a column called "favorite" of type "boolean"
#  to the pictures table.

# Then use this as a guide to add a "favorite" column of type "boolean"
#   to the videos table. Create the table if you don't have it yet.
#   Shortcut syntax to create a model:
#     rails generate model video source:string caption:string

# Remember, the first step to changing your DB is always:
#   rails generate migration <you pick a name>
