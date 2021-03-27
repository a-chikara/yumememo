require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe '投稿内容' do
    # context '投稿できる場合' do
    #   it '全て入力できていれば投稿できる' do
    #     expect(@memo).to be_valid
    #   end
    # end

    context '投稿できない場合' do
      it 'titleが空では投稿できない' do
        @memo.title = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Title can't be blank")
      end
      
      it 'infoが空では投稿できない' do
        @memo.info = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Info can't be blank")
      end

      it 'category_idが空では投稿できない' do
        @memo.category_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Category can't be blank")
      end

      it 'category_idが1では投稿できない' do
        @memo.category_id = 1
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Category must be other than 1")
      end

      it 'deadline_idが空では投稿できない' do
        @memo.deadline_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Deadline can't be blank")
      end

      it 'deadline_idが1では投稿できない' do
        @memo.deadline_id = 1
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Deadline must be other than 1")
      end

      it 'day_idが空では投稿できない' do
        @memo.day_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Day can't be blank")
      end

      it 'day_idが1では投稿できない' do
        @memo.day_id = 1
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Day must be other than 1")
      end

      it 'imageは必ず１枚投稿しなければいけない' do
        @memo.image = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Image can't be blank")
      end      
    end
  end
end