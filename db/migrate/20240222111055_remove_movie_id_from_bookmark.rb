class RemoveMovieIdFromBookmark < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :movie_id, :integer
  end
end
