class AddStaticToBloggPosts < ActiveRecord::Migration
  def change
    add_column :blogg_posts, :static, :boolean, default: false
  end
end
