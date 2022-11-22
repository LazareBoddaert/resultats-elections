class Api::V1::FormationsPolitiquesController < ApplicationController
  def index
    @formations_politiques = FormationPolitique.all
    render json: @formations_politiques, status: 200
  end

  def show
    @formation_politique = FormationPolitique.find(params[:id])
  end

  def create
    @formation_politique = FormationPolitique.new(restaurant_params)
    @formation_politique.save
    render json: @formation_politique, status: 200
  end

  private

  def formations_politiques_params
    params.require(:formations_politiques).permit(:nom, :positionnement_politique)
  end
end
