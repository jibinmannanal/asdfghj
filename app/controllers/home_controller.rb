class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @banner=Banner.where(status: true).last
    @authors=Author.where(status: true)
    @books=Book.where(status: true)
    @abouts=About.where(status: true).order('time')
    @services=Service.where(status: true).limit(6)
  end



  def anwser_key
    @answers=Answer.where(status: true).order('created_at')
  end

  def trades
    @trades=Trade.where(status: true).order('created_at')
  end

end
