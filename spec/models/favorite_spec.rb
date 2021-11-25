# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Favorite, "モデルに関するテスト", type: :model do
  let(:favorite) { create(:favorite) }

  it "user_idとpost_idが存在する場合保存される" do
    expect(favorite).to be_valid
  end

  it "post_idがなければ無効" do
    favorite.post_id = nil
    expect(favorite).to be_invalid
  end

  it "user_idがなければ無効" do
    favorite.user_id = nil
    expect(favorite).to be_invalid
  end
end
