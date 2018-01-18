class AddSlugToBloggPost < ActiveRecord::Migration
  def change
    add_column :blogg_posts, :slug, :string
    add_index :blogg_posts, :slug, unique: true
  end
end
