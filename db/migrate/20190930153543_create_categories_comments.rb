class CreateCategoriesComments < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_comments do |t|
      t.string :author
      t.text :body
      t.integer :category_id

      t.timestamps
    end
  end
end
