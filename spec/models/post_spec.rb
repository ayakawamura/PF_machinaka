# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, "モデルに関するテスト", type: :model do
  let(:post) { create(:post) }

  context "保存してみる" do
    it "有効な投稿内容が保存されるか" do
      expect(post).to be_valid
    end
  end

  context "バリデーションチェック" do
    it "user_idがないと保存できない" do
      post.user_id = nil
      expect(post).to be_invalid
    end

    it "bodyが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってくる" do
      post.body = nil
      expect(post).to be_invalid
      expect(post.errors[:body]).to include("can't be blank")
    end

    it "bodyが2文字未満の場合にバリデーションチェックされエラーメッセージが返ってくる" do
      post.body = "1" * 1
      expect(post).to be_invalid
      expect(post.errors[:body]).to include("is too short (minimum is 2 characters)")
    end
  end
end
