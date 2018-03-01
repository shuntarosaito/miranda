class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: :new

  def new
    @company = Company.new
  end

  def create
    Company.create
  end

end
