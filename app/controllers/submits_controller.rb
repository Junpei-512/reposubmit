class SubmitsController < ApplicationController
  def index
    @submits = Submit.all.order(created_at: :desc)
  end

  def show
    @submit = Submit.find_by(id: params[:id])
  end

  def new
  end

  def create
    @submit = Submit.new(content: params[:content])

    @submit.save
    redirect_to("/submits/index")
  end

  def edit
    @submit = Submit.find_by(id: params[:id])
  end

  def update
    @submit = Submit.find_by(id: params[:id])
    @submit.content = params[:content]
    @submit.save

    redirect_to("/submits/index")
  end

  def destroy
    @submit = Submit.find_by(id: params[:id])
    @submit.destroy

    redirect_to("/submits/index")
  end
end
