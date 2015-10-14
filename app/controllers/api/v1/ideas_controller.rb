class Api::V1::IdeasController < ApplicationController
  respond_to :json

  def index
    respond_with Idea.all.sort_by(&:created_at).reverse
  end

  def create
    respond_with Idea.create!(idea_params), location: nil
  end

  def update
    respond_with Idea.update(params[:id], idea_params), location: nil
  end

  def destroy
    respond_with Idea.destroy(params[:id]), location: nil
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :body)
  end
end
