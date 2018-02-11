module ThreewsHelper
  def threew_params
    params.require(:threew).permit(:title, :details)
  end
end
