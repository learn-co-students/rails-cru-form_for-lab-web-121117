class RemoveBioFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :bio, :text
  end
end
