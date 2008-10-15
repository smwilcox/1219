class AssetsController < ApplicationController
  
  def index
    @assets = Asset.find(:all)
  end
  
  def new
    @asset = Asset.new
  end
  
  def create
    @asset = Asset.new(params[:asset])
    if @asset.save
      redirect_to asset_url(@asset)
    else
      flash[:notice] = "Something went wrong!"
      render :action => 'new'
    end
  end
  
  def show
    @asset = Asset.find(params[:id])
  end
  
end
