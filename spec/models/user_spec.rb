# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User,"モデルに関するテスト",type: :model do
  describe "保存してみる" do
    it"有効なユーザー情報が保存されるか"do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end
end