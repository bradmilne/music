class StaticPagesController < ApplicationController

def home
  @paths = Path.all
end

def about
end

end
