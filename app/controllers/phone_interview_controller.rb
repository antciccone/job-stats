class PhoneInterviewController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    interview = PhoneInterview.new(company: params[:company])
    interview.save
  end

  def interviews
    render json: PhoneInterview.all
  end

end
