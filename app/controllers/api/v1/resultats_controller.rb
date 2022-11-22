class Api::V1::ResultatsController < ApplicationController
  def index
    @resultats = Resultat.all
    render json: @resultats, status: 200
  end

  def show
    @resultat = Resultat.find(params[:id])
    render json: @resultat, status: 200
  end

  def create
    @resultat = Resultat.new(resultats_params)
    @resultat.save
    render json: @resultat, status: 200
  end

  private

  def resultats_params
    params.require(:resultat).permit(:score_du_candidat, :scrutin_id, :candidat_id)
  end
end
