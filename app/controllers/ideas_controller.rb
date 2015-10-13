class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    @idea = Idea.create!(idea_params)
    redirect_to root
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :body, :quality)
  end
end
