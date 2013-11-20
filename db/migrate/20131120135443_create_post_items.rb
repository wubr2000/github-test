class CreatePostItems < ActiveRecord::Migration
  def change
    create_table :post_items do |t|
      t.string :title
      t.text :body
      t.date :published_on
      t.boolean :is_featured

      t.timestamps
    end
  end
end
