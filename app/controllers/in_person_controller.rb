class InPersonController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    in_person_interview = InPerson.new(company: params[:company])
    in_person_interview.save
  end

  def interview
    render json: InPerson.all
  end

end
