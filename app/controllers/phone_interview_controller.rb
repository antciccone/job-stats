class PhoneInterviewController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    interview = current_user.phone_interviews.new(phone_params)
    interview.save
  end

  def interviews
    render json: current_user.phone_interviews
  end

  private

  def phone_params
    params.require(:phone_interview).permit(:company)
  end
end
