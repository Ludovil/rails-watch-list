class AddMovieAndListToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :bookmarks, :movie_id, :integer
    add_column :bookmarks, :list_id, :integer
  end
end
