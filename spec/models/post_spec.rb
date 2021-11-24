# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post,"モデルに関するテスト",type: :model do
  describe "保存してみる" do
    it"有効な投稿内容が保存されるか"do
      expect(FactoryBot.build(:post)).to be_valid
    end
  end
end