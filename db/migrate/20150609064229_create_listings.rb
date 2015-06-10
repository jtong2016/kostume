class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :category_id
      t.integer :listing_id
      t.string :image
      t.integer :user_id
      t.text :description
      t.boolean :available

      t.timestamps

    end
  end
end
