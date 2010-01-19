class ReleasesController < ApplicationController
  def index
    @releases = Release.find(:all, :order => "release_date ASC")
    
    respond_to do |format| 
      format.html 
      format.xml { render :layout => false, :xml => @releases.to_xml } 
    end
  end
  
  def new
    @release = Release.new
  end
  
  def create
    @release = Release.new params[:release]
    
    if @release.save!
      flash[:notice] = "#{@release.title} saved."
      redirect_to :action => "index"
    else
      render :new
    end
  end
  
  def edit
    @release = Release.find params[:id]
  end
  
  def update
    @release = Release.find params[:id]
    
    if (@release.update_attributes(params[:release]))
      flash[:notice] = "#{@release.title} saved."
      redirect_to :action => "index"
    else
      render :edit
    end
  end
  
  def destroy
    release = Release.find params[:id]
    release.destroy
    flash[:notice] = "#{release.title} deleted."
    redirect_to :action => "index"
  end
  
end
