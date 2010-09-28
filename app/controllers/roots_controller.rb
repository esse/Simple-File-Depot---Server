class RootsController < ApplicationController

  caches_page :rss
  
  def index
    @tags = PhilosophyFile.tag_counts
    @newest = PhilosophyFile.find(:all, :limit => 10, :order => 'created_at DESC')
  end

  def rss
    @rss = PhilosophyFile.find(:all, :limit => 10, :order => 'created_at DESC')
    respond_to do |format|
      format.atom { render :layout => false }
    end
  end


protected
#  def tag_cloud
#      @tags = PhilosophyFile.tag_counts
#  end

end
