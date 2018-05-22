class DisplayEvaluationsController < ApplicationController
before_action :authenticate_user!, only: :new

  def new
    @display_evaluation = DisplayEvaluation.new

  end

  def create
    DisplayEvaluation.create(create_params)

    redirect_to controller: :users, action: :show
  end

  def edit
    @display_evaluation = DisplayEvaluation.find(params[:id])
  end

  def update
    display_evaluation = DisplayEvaluation.find(params[:id])
    display_evaluation.update(create_params)

    redirect_to controller: :users, action: :show
  end

  private
  def create_params
    params.require(:display_evaluation).permit(:display_salary_rate, :display_stability_rate, :display_benefits_rate, :display_future_rate, :display_access_rate, :display_reputation_rate, :display_self_growth_rate, :display_human_relationships_rate, :display_promotion_rate, :display_working_time_rate, :display_working_environment_rate, :display_rewarding_rate, :display_social_contribution_rate,).merge(user_id: current_user.id)
  end


end
