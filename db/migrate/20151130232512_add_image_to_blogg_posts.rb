class AddImageToBloggPosts < ActiveRecord::Migration
  def change
    add_column :blogg_posts, :image, :string
  end
end
