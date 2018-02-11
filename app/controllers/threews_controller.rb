class ThreewsController < ApplicationController
  before_action :authentication
  def edit
    @threew = Threew.find(params[:id])
  end

  def update
    @threew = Threew.find(params[:id])
    if @threew.update(threew_params)
      flash[:update] = "Update Successfully"
      redirect_to root_path
    else
      flash[:failed] = "Update Failed"
      redirect_to root_path
    end
  end
end
