# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostImage, "モデルに関するテスト", type: :model do
  let(:post_image) { create(:post_image) }

  it "有効な投稿内容が保存されるか" do
    expect(post_image).to be_valid
  end

  it "post_idがなければ保存できない" do
    post_image.post_id = nil
    expect(post_image).to be_invalid
  end
end
