class Api::V1::CandidatsController < ApplicationController
  def index
    @candidats = Candidat.all
    render json: @candidats, status: 200
  end

  def show
    @candidat = Candidat.find(params[:id])
  end

  def create
    @candidat = Candidat.new(restaurant_params)
    @candidat.save
    render json: @candidat, status: 200
  end

  private

  def candidats_params
    params.require(:candidat).permit(:nom, :formation_politique_id)
  end
end
