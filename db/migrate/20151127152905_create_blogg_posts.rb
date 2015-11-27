class CreateBloggPosts < ActiveRecord::Migration
  def change
    create_table :blogg_posts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
