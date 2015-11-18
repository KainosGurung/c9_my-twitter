class Tweet < ActiveRecord::Base
    belongs_to :user
    
    validates :content, length: {minimum: 1, maximum: 150}
         
    validates :user_id, numericality: { only_integer: true }     
    validates :likes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :dislikes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :retweets, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
