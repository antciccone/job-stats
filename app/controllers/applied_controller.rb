class AppliedController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    applied = Applied.new(company: params[:company])
    applied.save
  end

  def all_applied
    render json: Applied.all
  end

end
