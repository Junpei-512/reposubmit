class SubmitsController < ApplicationController
  def index
    @submits = Submit.all.order(created_at: :desc)
  end

  def show
    @submit = Submit.find_by(id: params[:id])
  end

  def new
    @submit = Submit.new
  end

  def create
    @submit = Submit.new(content: params[:content])
    if @submit.save
      flash[:notice] = "レポートを提出しました"
      redirect_to("/submits/index")
    else
      render("submits/new")
    end
  end

  def edit
    @submit = Submit.find_by(id: params[:id])
  end

  def update
    @submit = Submit.find_by(id: params[:id])
    @submit.content = params[:content]

    if @submit.save
      #保存できた場合
      flash[:notice] = "レポートを編集しました"
      redirect_to("/submits/index")
    else
      #保存できなかった場合
      render("submits/edit")
    end
  end

  def destroy
    @submit = Submit.find_by(id: params[:id])
    @submit.destroy
    flash[:notice] = "レポートを削除しました"
    redirect_to("/submits/index")
  end
end
