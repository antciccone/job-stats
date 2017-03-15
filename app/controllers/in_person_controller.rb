class InPersonController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    in_person_interview = current_user.in_persons.new(company: params[:company])
    in_person_interview.save
  end

  def interview
    render json: current_user.in_persons
  end

  private

  def in_person
    params.require(:in_person).permit(:company)
  end
end
