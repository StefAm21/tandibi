class AddForeignKeyToPosts < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :posts, :users, column: :user_id
    add_foreign_key :posts, :posts, column: :thread_id
  end
end
