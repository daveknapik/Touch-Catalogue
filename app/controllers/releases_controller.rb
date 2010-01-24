class ReleasesController < ApplicationController
  before_filter :login_required, :except => [:index, :show]
  
  def index
    @releases = Release.find(:all, :order => "release_date DESC")
    
    respond_to do |format| 
      format.html 
      format.xml { render :layout => false, :xml => @releases.to_xml(:include => :artist) } 
    end
  end
  
  def show
    @release = Release.find params[:id]
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
  
  private
    def login_required
      unless current_admin
        flash[:error] = 'Only logged in admins an access this page.'
        redirect_to releases_path
      end
    end
  
end
