class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.bigint :user_id
      t.bigint :thread_id
      t.references :postable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
