# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Relationship, "モデルに関するテスト", type: :model do
  let(:relationship) { create(:relationship) }

  it "follower_idとfollowed_idがあれば保存される" do
    expect(relationship).to be_valid
  end

  it "follower_idがなければ無効" do
    relationship.follower_id = nil
    expect(relationship).to be_invalid
  end

  it "followed_idがなければ無効" do
    relationship.followed_id = nil
    expect(relationship).to be_invalid
  end
end
