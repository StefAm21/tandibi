class AddForeignKeyToBonds < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bonds, :users, column: :user_id
    add_foreign_key :bonds, :users, column: :friend_id
  end
end
