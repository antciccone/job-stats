class ResponseController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    response = Response.new(description: params[:response][:description])
    response.save
  end

  def all_responses
    render json: Response.all
  end

end
