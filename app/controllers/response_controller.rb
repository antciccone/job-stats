class ResponseController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    # require "pry"; binding.pry
    response = current_user.responses.new(response_params)
    response.save
  end

  def all_responses
    render json: current_user.responses
  end

  private

  def response_params
    params.require(:response).permit(:description)
  end
end
