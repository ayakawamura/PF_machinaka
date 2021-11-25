# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tag, "モデルに関するテスト", type: :model do
  let(:tag) { create(:tag) }

  it "有効なnameがある場合保存される" do
    expect(tag).to be_valid
  end

  context "バリデーションチェック" do
    it "nameが31文字以上の場合は保存されない" do
      tag.name = "1" * 31
      expect(tag).to be_invalid
    end

    it "nameが空白の場合は保存されない" do
      tag.name = nil
      expect(tag).to be_invalid
    end
  end
end
