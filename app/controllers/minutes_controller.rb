class MinutesController < ApplicationController
  
  before_filter :authenticate, :only => [:show, :index]
  
  def index
    @minutes = Minute.find(:all)
  end
  
  def new
    @minute = Minute.new
  end
  
  def create
    @minute = Minute.new(params[:minute])
    if @minute.save
      Mailer.deliver_thankyou_mail(@minute)
      redirect_to '/thanks'
    else
      flash[:notice] = "Something went wrong!"
      render :action => 'new'
    end
  end
  
  def show
    @minute = Minute.find(params[:id])
  end
  
end
