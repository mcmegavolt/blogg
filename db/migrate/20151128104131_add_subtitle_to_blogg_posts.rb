class AddSubtitleToBloggPosts < ActiveRecord::Migration
  def change
    add_column :blogg_posts, :subtitle, :string
  end
end
