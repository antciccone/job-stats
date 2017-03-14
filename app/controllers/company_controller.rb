class CompanyController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    company = current_user.companies.new(name: params[:name])
    company.save
  end

  def all_companies
    render json: current_user.companies
  end

  def private
    params.require(:company).permit(:name)
  end

end
