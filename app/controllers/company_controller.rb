class CompanyController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    company = current_user.companies(company_params)
    company.save
  end

  def all_companies
    render json: current_user.companies
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

end
