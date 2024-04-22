class RemoveUsersFromPosts < ActiveRecord::Migration[7.1]
  def change
    # remove foreign_key user_id from posts
    remove_reference :posts, :user, null: false, foreign_key: true
  end
end
