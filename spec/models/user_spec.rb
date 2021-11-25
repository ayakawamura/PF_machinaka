# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, "モデルに関するテスト", type: :model do
  let(:user) { create(:user) }

  context "保存してみる" do
    it "有効なユーザー情報が保存されるか" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end

  context "バリデーションチェック" do
    it "nameが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user.name = nil
      expect(user).to be_invalid
      expect(user.errors[:name]).to include("can't be blank")
    end
    it "emailが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user.email = nil
      expect(user).to be_invalid
      expect(user.errors[:email]).to include("can't be blank")
    end
    it "passwordが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user.password = ""
      expect(user).to be_invalid
      expect(user.errors[:password]).to include("can't be blank")
    end
    it "passwordが６文字未満の場合にバリデーションチェックされエラーメッセージが返ってきているか" do
      user.password = "1" * 5
      expect(user).to be_invalid
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end
end
