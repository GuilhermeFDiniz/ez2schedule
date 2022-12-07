class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[index edit update]

  def index
    @teacher = policy_scope(Teacher)
  end

  def new
    @teacher = Teacher.new
    authorize @teacher
  end

  def create
    @teacher = Teacher.new(teacher_params)
    authorize @teacher
    @teacher.user = current_user
    if @teacher.save
      Category.where(id: params[:teacher][:categories]).each do |category|
        TeacherCategory.create!(teacher: @teacher, category: category)
      end
      redirect_to teacher_appointments_path(@teacher), notice: "Your teacher profile was successfully created."
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
      redirect_to teacher_appointments_path, notice: "Your profile was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])

  end

  def teacher_params
    params.require(:teacher).permit(:monday,
                                    :tuesday,
                                    :wednesday,
                                    :thursday,
                                    :friday,
                                    :saturday,
                                    :sunday,
                                    :price,
                                    :remote,
                                    :in_person,
                                    :teacher_video)
  end
end
