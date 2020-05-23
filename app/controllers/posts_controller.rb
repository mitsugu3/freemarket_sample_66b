class PostsController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)
  end
end
