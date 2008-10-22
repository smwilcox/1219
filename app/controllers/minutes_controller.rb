class MinutesController < ApplicationController
  
  def index
    @minutes = Minute.find(:all)
  end
  
  def new
    @minute = Minute.new
  end
  
  def create
    @minute = Minute.new(params[:minute])
    if @minute.save
      redirect_to minute_url(@minute)
    else
      flash[:notice] = "Something went wrong!"
      render :action => 'new'
    end
  end
  
  def show
    @minute = Minute.find(params[:id])
  end
  
end
