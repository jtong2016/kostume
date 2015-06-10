class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :cat_id
      t.text :category

      t.timestamps

    end
  end
end
