require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe '投稿内容' do
    context '投稿できない場合' do
      it 'titleが空では投稿できない' do
        @memo.title = ''
        @memo.valid?
        binding.pry
        # expect(@memo.errors.full_messages).to include("")
      end





    end
  end
end