class BannersController < ApplicationController
  layout 'admin'
  def index
    @banners = Banner.order('created_at')
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new(banner_params)
    if @banner.save
      flash[:success] = "The banner was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def banner_params
    params.require(:banner).permit(:image, :title, :content, :status)
  end
end
