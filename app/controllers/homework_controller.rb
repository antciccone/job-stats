class HomeworkController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    homework = current_user.homeworks.new(homework_params)
    homework.save
  end

  def all_homework
    render json: current_user.homeworks
  end

  private

  def homework_params
  params.require(:homework).permit(:company)
  end

end
