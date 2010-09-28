class PhilosophyFilesController < ApplicationController

  def index
    @files = PhilosophyFile.all
  end
  
  def show
    @file = PhilosophyFile.find(params[:id])
  end
  
  def new
    @file = PhilosophyFile.new
  end
  
  def create
    @file = PhilosophyFile.new(params[:philosophy_file])
    if @file.save
      flash[:notice] = t(:'created_file')
      expire_page :controller => 'roots', :action => 'rss'
      redirect_to @file
    else
      render :action => 'new'
    end
  end
  
#  def edit
#    @file = PhilosophyFile.find(params[:id])
#  end

  def last_ten
    @file = PhilosophyFile.find(:all, :limit => 10, :order => 'created_at DESC')
    respond_to do |format|
		  format.xml {render :text => @file.to_xml }
	  end
  end

  def last_date
    @file = PhilosophyFile.last
    respond_to do |format|
      format.text { render :text => @file.created_at }
    end
  end

  def last_file
    @file = PhilosophyFile.last
    respond_to do |format|
      format.text { render :text => "#{@file.name}\n#{@file.tag_list.join(",")}\n#{@file.attachment.url}" }
    end
  end
  
 # def update
 #   @file = PhilosophyFile.find(params[:id])
 #   if @file.update_attributes(params[:philosophy_file])
 #     flash[:notice] = "Successfully updated file."
 #     redirect_to @file
 #   else
 #     render :action => 'edit'
 #   end
 # end
  
 # def destroy
 #   @file = PhilosophyFile.find(params[:id])
 #   @file.destroy
 #   flash[:notice] = "Successfully destroyed file."
 #   redirect_to philosophy_files_url
 # end
end
