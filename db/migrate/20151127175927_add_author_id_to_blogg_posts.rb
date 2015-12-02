class AddAuthorIdToBloggPosts < ActiveRecord::Migration
  def change
    add_column :blogg_posts, :author_id, :integer
  end
end
