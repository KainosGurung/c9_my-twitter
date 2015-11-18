class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :content
      t.integer :likes
      t.integer :dislikes
      t.integer :retweets

      t.timestamps null: false
    end
  end
end
