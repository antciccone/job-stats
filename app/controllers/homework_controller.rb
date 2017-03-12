class HomeworkController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    require "pry"; binding.pry
    homework = Homework.new(company: params[:company])
    homework.save
  end

  def all_homework
    render json: Homework.all
  end

end
