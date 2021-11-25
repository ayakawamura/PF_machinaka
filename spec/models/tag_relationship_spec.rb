# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TagRelationship, "モデルに関するテスト", type: :model do
  let(:tag_relationship) { create(:tag_relationship) }

  it "post_idとtag_idがあれば保存される" do
    expect(tag_relationship).to be_valid
  end

  it "post_idがなければ無効" do
    tag_relationship.post_id = nil
    expect(tag_relationship).to be_invalid
  end

  it "tag_idがなければ無効" do
    tag_relationship.tag_id = nil
    expect(tag_relationship).to be_invalid
  end
end
