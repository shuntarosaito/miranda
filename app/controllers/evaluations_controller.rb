class EvaluationsController < ApplicationController
before_action :authenticate_user!, only: :new

  def new
    @evaluation = Evaluation.new

  end

  def create
    Evaluation.create(create_params)

    redirect_to controller: :users, action: :show
  end

  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  def update
    evaluation = Evaluation.find(params[:id])
    evaluation.update(create_params)

    redirect_to controller: :users, action: :show
  end

  def destroy
    evaluation = Evaluation.find(params[:id])
    evaluation.destroy

    redirect_to controller: :users, action: :show
  end

  # def graph
  #   genre = ['','','','']
  #   aData = [,,,]
  # end

  private
  def create_params
    params.require(:evaluation).permit(:company_id, :salary_rate, :stability_rate, :benefits_rate, :future_rate, :access_rate, :reputation_rate, :self_growth_rate, :human_relationships_rate, :promotion_rate, :working_time_rate, :working_environment_rate, :rewarding_rate, :social_contribution_rate,).merge(user_id: current_user.id)
  end

end