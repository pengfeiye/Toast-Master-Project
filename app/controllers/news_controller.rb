class NewsController < ApplicationController
  before_action :authentication, only: [:update, :edit, :destroy]
  def show
    @news = New.find(params[:id])
  end

  def edit
    @news = New.find(params[:id])
  end

  def update
    @news = New.find(params[:id])
    if @news.update(news_params)
      flash[:update] = "Update Successfully"
      redirect_to root_path
    else
      flash[:failed] = "Update Failed"
      redirect_to root_path
    end
  end

  def destroy
  end
end
