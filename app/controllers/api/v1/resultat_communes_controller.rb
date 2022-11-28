class Api::V1::ResultatCommunesController < ApplicationController
  def index
    @resultat_communes = ResultatCommune.all
    render json: @resultat_communes, status: 200
  end

  def show
    @resultat_commune = ResultatCommune.find(params[:id])
    render json: @resultat_commune, status: 200
  end

  def create
    @resultat_commune = ResultatCommune.new(resultat_communes_params)
    @resultat_commune.save
    render json: @resultat_commune, status: 200
  end

  private

  def resultat_communes_params
    params.require(:resultat_commune).permit(:commune_id,
                                             :scrutin_id,
                                             :inscrit_nombre,
                                             :abstention_nombre,
                                             :abstention_pourcentage_inscrit,
                                             :votant_nombre,
                                             :votant_pourcentage_inscrit,
                                             :blancs_nombre,
                                             :blancs_pourcentage_inscrit,
                                             :blancs_pourcentage_votant,
                                             :nuls_nombre,
                                             :nuls_pourcentage_inscrit,
                                             :nuls_pourcentage_votant,
                                             :blancs_nuls_nombre,
                                             :blancs_nuls_pourcentage_inscrit,
                                             :blancs_nuls_pourcentage_votant,
                                             :exprime_nombre,
                                             :exprime_pourcentage_inscrit,
                                             :exprime_pourcentage_votant)
  end
end
