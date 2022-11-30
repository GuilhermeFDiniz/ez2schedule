class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[create edit update]

  def index
    @teachers = policy_scope(Teacher)
  end

  def new
    authorize @teacher

    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    authorize @teacher
    if @teacher.save
      redirect_to @teacher, notice: "Your teacher profile was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @teacher
  end

  def update
    authorize @teacher
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: "Your profile was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])

  end

  def teacher_params
    params.require(:teacher).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :price, :remote)
  end
end
