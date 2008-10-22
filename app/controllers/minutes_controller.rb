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
      redirect_to '/thanks'
    else
      flash[:notice] = "Something went wrong!"
      render :action => 'new'
    end
  end
  
  def show
    @minute = Minute.find(params[:id])
  end
  
  private
  
  def authenticate
    authenticate_or_request_with_http_basic('1219 Curator') do |username, password|
      username == '1219' and password == 'aoeu'
    end
  end
  
end
