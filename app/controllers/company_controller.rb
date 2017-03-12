class CompanyController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    company = Company.new(name: params[:name])
    company.save
  end

  def all_companies
    render json: Company.all
  end

end