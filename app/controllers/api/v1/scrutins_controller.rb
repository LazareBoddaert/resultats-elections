class Api::V1::ScrutinsController < ApplicationController
  def index
    @scrutins = Scrutin.all
    render json: @scrutins, status: 200
  end

  def show
    @scrutin = Scrutin.find(params[:id])
    render json: @scrutin, status: 200
  end

  def create
    @scrutin = Scrutin.new(scrutins_params)
    @scrutin.save
    render json: @scrutin, status: 200
  end

  private

  def scrutins_params
    params.require(:scrutin).permit(:annee, :tour, :nombre_inscrit, :abstention, :nombre_votant, :blancs, :nuls, :nombre_exprime)
  end
end
