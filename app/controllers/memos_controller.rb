class MemosController < ApplicationController
  
  def index
    @memos = Memo.all
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

  def show
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])

  end

  def update
    @memo = Memo.find(params[:id])
    if @memo.update(memo_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    binding.pry
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to action: :index
  end



  private

  def memo_params
    params.require(:memo).permit(:title, :memo, :category_id, :deadline_id, :day_id, :image)
  end
end