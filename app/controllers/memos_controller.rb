class MemosController < ApplicationController
  
  def index
    @memos = Memo.all.order(created_at: :desc)
  end

  def new
    @memo = Memo.new
  end

  def create
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
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to action: :index
  end



  private

  def memo_params
    params.require(:memo).permit(:title, :info, :category_id, :deadline_id, :day_id, :image)
  end
end