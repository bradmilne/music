class PathsController < ApplicationController
  
  def index
    @paths = Path.all
  end
  
  def show
    @path = Path.find(params[:id])
    @lessons = @path.lessons.all
  end
end
