class DeleteModeratedFromPac < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :moderated
    remove_column :comments, :moderated
  end
end
