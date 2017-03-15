class AppliedController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    applied = current_user.applieds.new(applied_params)
    applied.save
  end

  def all_applied
    render json: current_user.applieds
  end

  private

  def applied_params
    params.require(:applied).permit(:company)
  end
end
