class MemosController < ApplicationController
  
  def index
  end

  def new
    @memo = Memo.new
  end

  def create
    binding.pry
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to :root
    else
      render :new
    end

  end

  private

  def memo_params
    params.require(:memo).permit(:title, :memo, :category_id, :deadline_id, :day_id, :image)
  end
end