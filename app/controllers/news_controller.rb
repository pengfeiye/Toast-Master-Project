class NewsController < ApplicationController
  before_action :authentication, only: [:update, :edit, :new, :create, :destroy]
  def show
    @news = New.find(params[:id])
  end

  def new
    @news = New.new
  end

  def create
    @news = New.new(news_params)
    if @news.save
      flash[:update] = "#{@news.title} Has Been Created"
      redirect_to root_path
    else
      flash[:failed] = "Failed to Create News"
      redirect_to news_create_page
    end
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
