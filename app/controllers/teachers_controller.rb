class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[new create]
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :price, :remote)
  end
end
