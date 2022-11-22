class Api::V1::VotesController < ApplicationController
  def index
    @votes = Vote.all
    render json: @votes, status: 200
  end

  def show
    @vote = Vote.find(params[:id])
    render json: @vote, status: 200
  end

  def create
    @vote = Vote.new(votes_params)
    @vote.save
    render json: @vote, status: 200
  end

  private

  def votes_params
    params.require(:vote).permit(:commune_id, :scrutin_id)
  end
end
