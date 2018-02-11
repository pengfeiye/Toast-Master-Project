module NewsHelper
  def news_params
    params.require(:news).permit(:title, :details)
  end

end
