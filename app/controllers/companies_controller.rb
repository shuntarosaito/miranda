class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: :new

  def new
    @company = Company.new
  end

  def create
    Company.create(create_params)

    redirect_to controller: :users, action: :show
  end

  private
  def create_params
    params.require(:company).permit(:name, :comment)
  end

end
