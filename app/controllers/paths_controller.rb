class PathsController < ApplicationController
  def show
    @path = Path.find(params[:id])
    @lessons = @path.lessons.all
  end
end
