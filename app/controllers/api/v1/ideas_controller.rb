class Api::V1::IdeasController < ApplicationController
  respond_to :json, :html

  def index
    @ideas = Idea.all
    respond_with @ideas
  end

  def create
    @idea = Idea.create!(idea_params)
    respond_with @idea
  end

  private

  def idea_params
    params.permit(:title, :body, :quality)
  end
end
