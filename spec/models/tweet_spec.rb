require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it 'has a valid factory' do
      expect(build(:tweet)).to be_valid
  end

  it 'fails if content is too short or too long' do
    expect(build(:tweet, content: nil)).to_not be_valid
                                    #generate random string of length 200 with chars a-z
    expect(build(:tweet, content: (0...200).map{ ('a'..'z').to_a[rand(26)] }.join )).to_not be_valid
  end
    
  it 'fails if likes, dislikes, or retweets is less than 1' do
    expect(build(:tweet, likes: -1)).to_not be_valid
    expect(build(:tweet, dislikes: -1)).to_not be_valid
    expect(build(:tweet, retweets: -1)).to_not be_valid
  end

end
