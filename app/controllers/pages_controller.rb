class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      @teachers = Teacher.search_by_all(params[:query])
    else
      @teachers = Teacher.all
    end
  end
end
