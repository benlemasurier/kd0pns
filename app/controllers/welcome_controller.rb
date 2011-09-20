class WelcomeController < ApplicationController
  def index
    @posts = Post.all(:limit => 3)
  end
end
