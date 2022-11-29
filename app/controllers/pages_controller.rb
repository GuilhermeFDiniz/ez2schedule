class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @teacher = Teacher.last

    start_date = Date.today
    @appointments = @teacher.appointments.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
  end
end
