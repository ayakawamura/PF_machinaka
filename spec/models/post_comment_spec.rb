# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostComment, "モデルに関するテスト", type: :model do
  let(:post_comment) { create(:post_comment) }

  it "有効な投稿内容の場合保存される" do
    expect(post_comment).to be_valid
  end

  it "post_idがなければ無効" do
    post_comment.post_id = nil
    expect(post_comment).to be_invalid
  end

  it "user_idがなければ無効" do
    post_comment.user_id = nil
    expect(post_comment).to be_invalid
  end

  it "commentが空白であれば無効" do
    post_comment.comment = nil
    expect(post_comment).to be_invalid
  end

  it "commentが201文字以上であれば無効" do
    post_comment.comment = "1" * 201
    expect(post_comment).to be_invalid
  end
end
