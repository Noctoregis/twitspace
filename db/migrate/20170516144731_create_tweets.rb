class CreateTweets < ActiveRecord::Migration[5.0]
   def self.up
    create_table :tweets do |t|
      t.string :content
    end
  end

  def self.down
    drop_table :tweets
  end
  def change
    create_table :tweets do |t|
      t.date :date
      t.string :url
      t.string :url_image
      t.string :auteur
      t.integer :likes
      t.text :description
      t.timestamps
    end
  end
end