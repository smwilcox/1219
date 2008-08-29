class AssetsController < ApplicationController
  
  def index
    @assets = Asset.find(:all)
  end
  
  def create
    @asset = Asset.new(params[:asset])
    if @asset.save
      redirect_to asset_url(@asset)
    else
      flash[:notice] = "Something went wrong!"
      redirect_to :action => 'new'
    end
  end
  
  def show
    @asset = Asset.find(params[:id])
  end
  
end
