class CompanyController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    company = current_user.companies.new(company_params)
    if company.save
      flash[:message] = "testing"
    end
  end

  def all_companies
    render json: current_user.companies
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

end
