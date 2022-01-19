class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :post_text
      t.integer :post_id

      t.timestamps
    end
    add_index :posts, :post_id
  end
end
