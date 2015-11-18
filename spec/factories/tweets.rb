FactoryGirl.define do

  factory :tweet do
  
    user_id 1
    content { FFaker::Lorem.characters(character_count= 150) }
    
            #generates an integer > 0. That's all we need.
    likes { FFaker::Address.building_number }
    dislikes { FFaker::Address.building_number }
    retweets { FFaker::Address.building_number }
    
  end
end
