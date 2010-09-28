class TagsController < ApplicationController
  def index
    @tags = PhilosophyFile.tag_counts
  end

  def show
    @files = PhilosophyFile.find_tagged_with(params[:id])
  end
end
