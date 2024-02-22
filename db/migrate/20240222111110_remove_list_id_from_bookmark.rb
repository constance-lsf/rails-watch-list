class RemoveListIdFromBookmark < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :list_id, :integer
  end
end
