class IndianTeamController < ApplicationController
  def index
    team=IndianTeamsModel.all
    render json: team , status: :ok
  end

  def show
    team=IndianTeamsModel.find(params[:id])
    if team
      render json: team ,status: :ok
    end
  end

  def create
    team =IndianTeamsModel.new(
      name: sd_params[:name],
      age: sd_params[:age],
      role: sd_params[:role],
      ranking: sd_params[:ranking]
      )
    if team.save
      render json: team, status:ok 
      else
      render json: "not save data" 
    end
  end

  def update
    team = IndianTeamsModel.find(params[:id])
    if team
      team.update(
        name: sd_params[:name],
        age: sd_params[:age],
        role: sd_params[:role],
        ranking: sd_params[:ranking]
        )
      render json: team,status:200
    else
      render json: "your data was not updates"
    end
  end

  def destroy
    team = IndianTeamsModel.find_by(id: params[:id])
    if team.destroy
      render json: "delete successfully done!"
    else
      render json: "something wrong"
    end
  end
  private
  def sd_params
    params.require(:indian_team).permit([:name,:age,:role,:ranking])
  end
end
