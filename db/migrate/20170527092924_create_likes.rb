class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :tweets, foreign_key: true
      t.integer :like_id
      t.integer :tweet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
