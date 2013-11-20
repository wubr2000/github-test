class CreatePostItemsTags < ActiveRecord::Migration
  def change
    create_table :post_items_tags, id: false do |t|
      t.references :post_item, index: true
      t.references :tag, index: true

    end

    add_index :post_items_tags, [ :post_item_id, :tag_id ], unique: true
  end
end
